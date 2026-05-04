class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.7"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.7/aktags"
    sha256 "6dc58f6161e3770e43b3e57dbb87e6a99ac35e625dd0a596ef62436748a3ea56"
  end

  def install
    bin.install "aktags"
  end

  def post_install
    (var/"aktags").mkpath
  end

  service do
    run [opt_bin/"aktags", "--daemon"]
    keep_alive true
    log_path var/"log/aktags.log"
    error_log_path var/"log/aktags.log"
  end

  test do
    system "#{bin}/aktags", "--help"
  end
end
