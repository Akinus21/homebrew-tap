class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.50"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.50/aktags"
    sha256 "62a89621bf0077aec4b4f270f27a1c6d19e9fbda465d76873af9d5e6ebe7f201"
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
