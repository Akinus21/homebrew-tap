class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.20"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.20/aktags"
    sha256 "67c8b8763d9da892ef60dd7689a0c9e9e7de41214d55092582502bc4f5554d39"
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
