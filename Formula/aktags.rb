class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.47"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.47/aktags"
    sha256 "63afa791aa48ac0afb6ec5cb8e50ffee76d2326368489e2245d04245d026575a"
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
