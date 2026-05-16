class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.59"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.59/aktags"
    sha256 "a9c093ab1da6fb78b47c1cbde3fe51c1b80be2232208097a6c794433bde245a6"
  end

  def install
    bin.install "aktags"
  end

  def post_install
    mkdir_p var/"aktags"
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
