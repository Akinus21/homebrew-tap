class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.12"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.12/aktags"
    sha256 "15a23209a912042087348d878ad047ff78b30d08e078af12485f4c6061ca91d8"
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
