class Gamemon < Formula
  desc "GameMon service daemon"
  homepage "https://github.com/Akinus21/GameMon"
  url "https://github.com/Akinus21/GameMon/releases/download/v0.6.6/GameMon.tar.gz"
  sha256 "2c463d07635da87dd09fdb7bc569baaa8ef05b04cf0e623dbc66c5b30a901901"
  license "MIT"

  def install
    prefix.install Dir["GameMon/*"]
    bin.install_symlink "#{prefix}/GameMon/GameMon-service" => "gamemon-service"
    bin.install_symlink "#{prefix}/GameMon/GameMon-gui" => "gamemon-gui"
    bin.install_symlink "#{prefix}/GameMon/GameMon-update" => "gamemon-update"
  end

  def post_install
    system "#{prefix}/GameMon/GameMon-service", "--install-resources"

    # Install desktop entry
    desktop_dir = "#{ENV["HOME"]}/.local/share/applications"
    mkdir_p desktop_dir
    File.write("#{desktop_dir}/gamemon.desktop", <<~DESKTOP)
      [Desktop Entry]
      Name=GameMon
      Comment=Automated Gaming Companion
      Exec=#{bin}/gamemon-gui
      Icon=#{prefix}/GameMon/resources/gamemon.png
      Type=Application
      Categories=Game;Utility;
      Terminal=false
    DESKTOP
    system "update-desktop-database", desktop_dir if which("update-desktop-database")

    # Install systemd user service
    if which("systemctl")
      service_dir = "#{ENV["HOME"]}/.config/systemd/user"
      mkdir_p service_dir
      File.write("#{service_dir}/gamemon.service", <<~SERVICE)
        [Unit]
        Description=GameMon Gaming Monitor Service
        After=graphical-session.target

        [Service]
        ExecStart=#{bin}/gamemon-service
        Restart=on-failure
        RestartSec=5

        [Install]
        WantedBy=default.target
      SERVICE
      system "systemctl", "--user", "daemon-reload"
      system "systemctl", "--user", "enable", "gamemon"
      system "systemctl", "--user", "start", "gamemon"
    end
  end
end
