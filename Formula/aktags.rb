class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.1"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.1/aktags"
    sha256 "38417ade8d036f8c4286997ffde38630a63f7efd8a1a6698a9b11493460ddf6d"
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
