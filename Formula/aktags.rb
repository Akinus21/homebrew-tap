class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.37"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.37/aktags"
    sha256 "a5d08fab70cfdaab2778e8e361adee2417a279a36fe096b94608fdb3f260dd26"
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
