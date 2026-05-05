class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.19"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.19/aktags"
    sha256 "a40bddfb564ee03c9a801a9d1ee5afc1b4a3e37c95bdb89870f1ee9bb1585503"
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
