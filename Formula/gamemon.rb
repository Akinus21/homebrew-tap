class Gamemon < Formula
  desc "GameMon service daemon"
  homepage "https://github.com/Akinus21/GameMon"
  url "https://github.com/Akinus21/GameMon/releases/download/v0.6.10/GameMon.tar.gz"
  sha256 "50ab5a53eaeb88f726c7333219442276fa23469cd0f63e80f6fc9cbdc840fd69"
  license "MIT"

  def install
    bin.install "GameMon-service" => "gamemon-service"
    bin.install "GameMon-gui"     => "gamemon-gui"
    bin.install "GameMon-update"  => "gamemon-update"
    (share/"gamemon").install "resources"
  end

  service do
    run [opt_bin/"gamemon-service"]
    keep_alive true
    restart :on_fail
    log_path var/"log/gamemon.log"
    error_log_path var/"log/gamemon.log"
  end

  def post_install
    (var/"gamemon").mkpath
    (var/"log").mkpath
    system bin/"gamemon-service", "--install-resources"
  end
end
