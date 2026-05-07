class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.45"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.45/aktags"
    sha256 "7389ef12d5b24685a051e6e56f7c251268ca270dfc6912a802b323260dc0d066"
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
