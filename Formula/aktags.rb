class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.55"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.55/aktags"
    sha256 "a2c5ee4b363a664adbb3cd373c7c7a1159f348b20f6a1a4ce8d1aa4d85ed56a4"
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
