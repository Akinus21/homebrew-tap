class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.5"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.5/aktags"
    sha256 "f75729747e8e7eb5116d9ff0a4616603dfa83d61b6ab7170af3e59cc28e20330"
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
