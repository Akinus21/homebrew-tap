class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.40"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.40/aktags"
    sha256 "86f764762790c8a387a935e34d7b6f99ef87a476d8e35bf4b06101b2ed135a25"
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
