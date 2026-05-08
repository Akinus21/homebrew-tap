class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.58"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.58/aktags"
    sha256 "0f6bdad8f7ed82a058b8d1c3f1d77d0c3e0de3e078b49a56981ae5523b38f426"
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
