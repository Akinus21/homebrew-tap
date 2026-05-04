class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.10"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.10/aktags"
    sha256 "fef51fecc9a5007ca03f63034abc6e6e7e98b675e4eb3af9194727f98cd800f8"
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
