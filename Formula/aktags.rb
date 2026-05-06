class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.38"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.38/aktags"
    sha256 "426d6124e12914d3f7803746ffd7815460df8d18f2f365d7407878db1ded2b8e"
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
