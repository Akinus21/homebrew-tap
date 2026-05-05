class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.21"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.21/aktags"
    sha256 "5e0b1217ec7c437239ebb57032fa875a08b26826e195f5346d9b1d797bee43ba"
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
