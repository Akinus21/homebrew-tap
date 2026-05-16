class Gamemon < Formula
  desc "GameMon service daemon"
  homepage "https://github.com/Akinus21/GameMon"
  url "https://github.com/Akinus21/GameMon/releases/download/v0.6.11/GameMon.tar.gz"
  sha256 "033768bc0a02b831ec6af0543c25dc0ff3dec3d06adb28e286e55853f9ef58b2"
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
    log_path var/"log/gamemon.log"
    error_log_path var/"log/gamemon.log"
  end

  def post_install
    (var/"gamemon").mkpath
    (var/"log").mkpath
    system bin/"gamemon-service", "--install-resources"
  end
end
