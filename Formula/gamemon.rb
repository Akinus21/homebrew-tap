class Gamemon < Formula
  desc "GameMon service daemon"
  homepage "https://github.com/Akinus21/GameMon"
  url "https://github.com/Akinus21/GameMon/releases/download/v0.6.13/GameMon.tar.gz"
  sha256 "b8d7fbc5f2b00c5fa755d91e85962bc6c2a45fd7a990fcd311093c8812b45fe2"
  license "MIT"

  def install
    bin.install "GameMon-service" => "gamemon-service"
    bin.install "GameMon-gui"     => "gamemon-gui"
    bin.install "GameMon-update"  => "gamemon-update"
    prefix.install "GameMon/resources" => "gamemon/resources"
  end

  service do
    run [opt_bin/"gamemon-service"]
    run_at_startup true
    keep_alive true
    log_path var/"log/gamemon.log"
    error_log_path var/"log/gamemon.log"
  end
end
