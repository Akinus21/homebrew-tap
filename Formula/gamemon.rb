class Gamemon < Formula
  desc "GameMon service daemon"
  homepage "https://github.com/Akinus21/GameMon"
  url "https://github.com/Akinus21/GameMon/releases/download/v0.6.8/GameMon.tar.gz"
  sha256 "f24076923c1090d935f6e0be45c87affb07d23c305fd951d02fdd20cbb369044"
  license "MIT"

  def install
    bin.install "GameMon/GameMon-service" => "gamemon-service"
    bin.install "GameMon/GameMon-gui"     => "gamemon-gui"
    bin.install "GameMon/GameMon-update"  => "gamemon-update"
    (share/"gamemon").install "GameMon/resources"
  end

  def post_install
    system "#{bin}/gamemon-service", "--install-resources"

    desktop_dir = "#{ENV["HOME"]}/.local/share/applications"
    mkdir_p desktop_dir
    icon_path = "#{share}/gamemon/resources/gamemon.png"
    File.write("#{desktop_dir}/gamemon.desktop", <<~DESKTOP)
      [Desktop Entry]
      Name=GameMon
      Comment=Automated Gaming Companion
      Exec=gamemon-gui
      Icon=#{icon_path}
      Type=Application
      Categories=Game;Utility;
      Terminal=false
    DESKTOP
    system "update-desktop-database", desktop_dir if which("update-desktop-database")

    if which("systemctl")
      service_dir = "#{ENV["HOME"]}/.config/systemd/user"
      mkdir_p service_dir
      File.write("#{service_dir}/gamemon.service", <<~SERVICE)
        [Unit]
        Description=GameMon Gaming Monitor Service
        After=graphical-session.target

        [Service]
        ExecStart=%h/.linuxbrew/bin/gamemon-service
        Restart=on-failure
        RestartSec=5

        [Install]
        WantedBy=default.target
      SERVICE
      system "systemctl", "--user", "daemon-reload"
      system "systemctl", "--user", "enable", "--now", "gamemon"
    end
  end
end
