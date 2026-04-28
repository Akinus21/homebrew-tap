class BlueakSessionManager < Formula
  desc "Saves and restores niri compositor session state"
  homepage "https://github.com/Akinus21/blueak-session-manager"
  version "0.0.9"
  url "https://github.com/Akinus21/blueak-session-manager/releases/download/v0.0.9/blueak-session-manager"
  sha256 "6d5a3a5ac5ee6e5a9c102b5cf6c5e370993f89aa968288b2613a16bdd3a4f38d"

  def install
    bin.install "blueak-session-manager"
  end

  def post_install
    systemd_dir = "#{ENV["HOME"]}/.config/systemd/user"
    require "fileutils"
    FileUtils.mkdir_p(systemd_dir)

    File.write("#{systemd_dir}/blueak-session-save.service", "[Unit]\nDescription=Save niri session state\nBefore=niri.service\nDefaultDependencies=no\nAfter=graphical-session.target\n\n[Service]\nType=oneshot\nRemainAfterExit=no\nExecStart=#{bin}/blueak-session-manager save\nEnvironment=\"PATH=/usr/local/bin:/usr/bin:/bin:#{bin}\"\nPassEnvironment=NIRI_SOCKET\n\n[Install]\nWantedBy=graphical-session-pre.target\n")

    File.write("#{systemd_dir}/blueak-session-restore.service", "[Unit]\nDescription=Restore niri session state\nAfter=graphical-session.target niri.service\nPartOf=graphical-session.target\n\n[Service]\nType=oneshot\nRemainAfterExit=no\nExecStart=#{bin}/blueak-session-manager restore\nEnvironment=\"PATH=/usr/local/bin:/usr/bin:/bin:#{bin}\"\nPassEnvironment=NIRI_SOCKET WAYLAND_DISPLAY XDG_RUNTIME_DIR\nTimeoutStartSec=60\n\n[Install]\nWantedBy=graphical-session.target\n")
  end

  test do
    system bin/"blueak-session-manager", "--version"
  end
end
