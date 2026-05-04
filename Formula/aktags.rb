class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.6"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.6/aktags"
    sha256 "cbad4ccf59d2d8973c6cc6fd43f3454fe3f7d3ab4b44a1c484a129c8828e8b90"
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
