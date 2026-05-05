class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.24"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.24/aktags"
    sha256 "06186ad7e6d78264a79db0fefbe3c0f5d988d63ec694797ca6c500fe4ee999d4"
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
