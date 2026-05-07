class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.48"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.48/aktags"
    sha256 "5625918d00a8492cc9af365a46163b8608cd700273aac3cd374b57c109a58f9c"
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
