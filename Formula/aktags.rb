class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.18"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.18/aktags"
    sha256 "c1771afd7c3ee95013aef84e2cac11bfaa7101d981e5455ac3c3ded4a904eea7"
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
