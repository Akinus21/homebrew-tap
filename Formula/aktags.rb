class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.54"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.54/aktags"
    sha256 "8478a2ab24a374c07612b822068942ae8256ae82ad34d208eb3783dc2b4049db"
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
