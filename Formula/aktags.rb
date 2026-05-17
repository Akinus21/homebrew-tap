class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.60"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.60/aktags"
    sha256 "9f4ab7c249bea8e57ebd7651b50ea76bc5605e3c41b105a4e080f608cd563dff"
  end

  def install
    bin.install "aktags"
  end

  def post_install
    mkdir_p var/"aktags"
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
