class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.43"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.43/aktags"
    sha256 "36a0a71e27dd507937a096f2e28e4532610fa8dde6491098e32c666495cb2665"
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
