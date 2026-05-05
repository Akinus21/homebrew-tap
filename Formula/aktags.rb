class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.13"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.13/aktags"
    sha256 "0f7853f5428a2e1b0fa27ceee98e807392d633605729310924bd3cc2e69b6f04"
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
