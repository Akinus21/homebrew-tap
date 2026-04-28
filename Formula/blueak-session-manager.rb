class BlueakSessionManager < Formula
  desc "Saves and restores niri compositor session state"
  homepage "https://github.com/Akinus21/blueak-session-manager"
  version "0.0.7"
  url "https://github.com/Akinus21/blueak-session-manager/releases/download/v0.0.7/blueak-session-manager"
  sha256 "6d5a3a5ac5ee6e5a9c102b5cf6c5e370993f89aa968288b2613a16bdd3a4f38d"

  def install
    bin.install "blueak-session-manager"
  end

  def post_install
    systemd_dir = ENV["HOME"] + "/.config/systemd/user"
    mkdir_p systemd_dir

    save_service = <<~EOS
      [Unit]
      Description=Save niri session state
      Before=niri.service
      DefaultDependencies=no
      After=graphical-session.target

      [Service]
      Type=oneshot
      RemainAfterExit=no
      ExecStart=#{bin}/blueak-session-manager save
      Environment="PATH=/usr/local/bin:/usr/bin:/bin:#{bin}"
      PassEnvironment=NIRI_SOCKET

      [Install]
      WantedBy=graphical-session-pre.target
    EOS

    restore_service = <<~EOS
      [Unit]
      Description=Restore niri session state
      After=graphical-session.target niri.service
      PartOf=graphical-session.target

      [Service]
      Type=oneshot
      RemainAfterExit=no
      ExecStart=#{bin}/blueak-session-manager restore
      Environment="PATH=/usr/local/bin:/usr/bin:/bin:#{bin}"
      PassEnvironment=NIRI_SOCKET WAYLAND_DISPLAY XDG_RUNTIME_DIR
      TimeoutStartSec=60

      [Install]
      WantedBy=graphical-session.target
    EOS

    (systemd_dir / "blueak-session-save.service").write save_service
    (systemd_dir / "blueak-session-restore.service").write restore_service

    system("systemctl", "--user", "daemon-reload")
    system("systemctl", "--user", "enable", "blueak-session-save.service", "blueak-session-restore.service")
    system("systemctl", "--user", "start", "blueak-session-save.service", "blueak-session-restore.service")
  end

  test do
    system bin/"blueak-session-manager", "--version"
  end
end
