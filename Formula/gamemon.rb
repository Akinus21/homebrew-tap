class Gamemon < Formula
  desc "GameMon service daemon"
  homepage "https://github.com/Akinus21/GameMon"
  url "https://github.com/Akinus21/GameMon/releases/download/v0.6.14/GameMon.tar.gz"
  sha256 "5f15405d8623bbdf930440cfe3c90328a779a3020c7044e8fea73eb55e4198da"
  license "MIT"

  def install
    bin.install "GameMon-service" => "gamemon-service"
    bin.install "GameMon-gui"     => "gamemon-gui"
    bin.install "GameMon-update"  => "gamemon-update"
    (share/"gamemon/resources").mkpath
    cp_r buildpath/"GameMon/resources", share/"gamemon/resources", remove_destination: true
  end

  service do
    run [opt_bin/"gamemon-service"]
    run_at_startup true
    keep_alive true
    log_path var/"log/gamemon.log"
    error_log_path var/"log/gamemon.log"
  end
end
