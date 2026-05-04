class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.8"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.8/aktags"
    sha256 "041d070122847c2d25841d480b07c7cd5b4b2df66fbf3043b5c5f7a7655359cc"
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
