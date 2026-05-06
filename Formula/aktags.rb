class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.34"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.34/aktags"
    sha256 "4c5421dda29154ed9d164bee119930ee7a93409d554408a0e4086ca0b105cba5"
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
