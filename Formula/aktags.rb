class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.35"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.35/aktags"
    sha256 "e6c5859138379f2e6e4d773c286818153b93cfc4b84bb035cd8334f75fbca9ca"
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
