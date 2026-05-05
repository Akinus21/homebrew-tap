class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.23"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.23/aktags"
    sha256 "b54efa6b8b824af49b2bdeddc29ba62213fec915d9fffc0b5f8014d153ad2121"
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
