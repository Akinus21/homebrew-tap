class Gamemon < Formula
  desc "GameMon service daemon"
  homepage "https://github.com/Akinus21/GameMon"
  url "https://github.com/Akinus21/GameMon/releases/download/v0.6.16/GameMon.tar.gz"
  sha256 "793152e11a1fd773cfaecc0c006f5080ec4d4aa97d58e95f21e8dc458cc3a306"
  license "MIT"

  def install
    bin.install "GameMon-service" => "gamemon-service"
    bin.install "GameMon-gui"     => "gamemon-gui"
    bin.install "GameMon-update"  => "gamemon-update"
  end

  service do
    run [opt_bin/"gamemon-service"]
    keep_alive true
    log_path var/"log/gamemon.log"
    error_log_path var/"log/gamemon.log"
  end

  def post_install
    (var/"log").mkpath
    system bin/"gamemon-service", "--install-resources"
  end
end
