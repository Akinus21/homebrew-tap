class Aktags < Formula
  desc "AI-powered tag-based file browser with background daemon"
  homepage "https://github.com/Akinus21/Aktags"
  version "0.0.28"

  on_linux do
    url "https://github.com/Akinus21/Aktags/releases/download/v0.0.28/aktags"
    sha256 "ef969bad62d2b7884daacab91ed440d33520e96a2ea00b10d1874530b63aec7c"
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
