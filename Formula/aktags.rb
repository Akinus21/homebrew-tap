class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.49"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.49/aktags"
    sha256 "65e52aad0aaf1e257b327ad8b0e437c75e6651ccf72532e9aacef822f8207742"
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
