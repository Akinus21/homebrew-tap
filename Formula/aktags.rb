class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.11"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.11/aktags"
    sha256 "9d979788291564c73a577757ecdce08aff71b2c67a647699ceb5388f96fdeb6f"
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
