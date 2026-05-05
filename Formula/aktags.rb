class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.14"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.14/aktags"
    sha256 "e0e7c7973bbd91bb18e757b42f0a9f7c6500bbd3c612cdeba7cff47d64c429a4"
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
