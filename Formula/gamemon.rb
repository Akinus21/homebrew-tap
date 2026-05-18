class Gamemon < Formula
  desc "GameMon service daemon"
  homepage "https://github.com/Akinus21/GameMon"
  url "https://github.com/Akinus21/GameMon/releases/download/v0.6.15/GameMon.tar.gz"
  sha256 "9bea7d9bb3b6d63c0601f95d56a4bd48d4d0c41e87a758d7a78bdce094fa7d19"
  license "MIT"

  def install
    bin.install "GameMon-service" => "gamemon-service"
    bin.install "GameMon-gui"     => "gamemon-gui"
    bin.install "GameMon-update"  => "gamemon-update"
  end

  service do
    run [opt_bin/"gamemon-service"]
    run_at_startup true
    keep_alive true
    log_path var/"log/gamemon.log"
    error_log_path var/"log/gamemon.log"
  end

  def post_install
    (var/"log").mkpath
    system bin/"gamemon-service", "--install-resources"
  end
end
