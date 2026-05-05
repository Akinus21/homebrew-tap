class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.17"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.17/aktags"
    sha256 "a788859e6dad9b7d539513f55a608e64bf5813d18b3a2f2cd25e5bab8b79ecab"
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
