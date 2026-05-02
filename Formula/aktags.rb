class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.3"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.3/aktags"
    sha256 "d3fe78aa290d5ee1c5ac4eb1698fa9387acb0cf3deae0001bc29ed7e20155cd6"
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
