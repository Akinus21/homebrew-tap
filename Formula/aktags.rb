class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.4"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.4/aktags"
    sha256 "68412824e77d41a977517754a14bc7d00c6047ff115e60d81bb6755f378512a8"
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
