class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.2"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.2/aktags"
    sha256 "874b15c1e1b249adfa237255214b22de5e13a04898affdbca15b14aed3f19eaa"
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
