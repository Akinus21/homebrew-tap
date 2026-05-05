class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.26"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.26/aktags"
    sha256 "a84774a1de6628fb3e8f0292d482b86b4ff10ae338170f5e258b6cba854a7eb0"
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
