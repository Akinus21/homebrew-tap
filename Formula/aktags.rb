class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.52"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.52/aktags"
    sha256 "dafa5b2ad0506aed512091dba542edd330862f918b5b8763f31f58db3da5dae0"
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
