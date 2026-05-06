class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.36"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.36/aktags"
    sha256 "e3f6d03d0fa98ee025a511efcfb4baa189639eda7f78864d2d12944442f1ff53"
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
