class Gamemon < Formula
  desc "GameMon service daemon"
  homepage "https://github.com/Akinus21/GameMon"
  url "https://github.com/Akinus21/GameMon/releases/download/v0.6.12/GameMon.tar.gz"
  sha256 "28eaffccbc483c11ff0b978a53b00574eb1137eeb70a6fe04862b4cd16e8258f"
  license "MIT"

  def install
    bin.install "GameMon-service" => "gamemon-service"
    bin.install "GameMon-gui"     => "gamemon-gui"
    bin.install "GameMon-update"  => "gamemon-update"
    (share/"gamemon/resources").mkpath
  end

  service do
    run [opt_bin/"gamemon-service"]
    run_at_startup true
    keep_alive true
    log_path var/"log/gamemon.log"
    error_log_path var/"log/gamemon.log"
  end
end
