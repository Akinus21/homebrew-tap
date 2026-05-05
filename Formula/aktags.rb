class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.15"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.15/aktags"
    sha256 "7ca79887361cb2aeda4cd7d5134dd6cea8eeadfd4276ad6b47eb746ce9942d9c"
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
