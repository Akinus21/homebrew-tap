class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.42"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.42/aktags"
    sha256 "2e94c6246f19f4b2f7675ac123211a2ae953507518ea7e8926db76647985d834"
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
