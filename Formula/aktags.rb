class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.30"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.30/aktags"
    sha256 "4c3130dc928f7b6e9e8391ecf1c792f822c95bf9be712bed9a5ceff91f32a1e9"
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
