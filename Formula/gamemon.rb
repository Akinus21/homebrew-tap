class Gamemon < Formula
  desc "GameMon service daemon"
  homepage "https://github.com/Akinus21/GameMon"
  url "https://github.com/Akinus21/GameMon/releases/download/v0.6.2/GameMon-service"
  sha256 "9edecbaf526bcb9ffa9e0922bca01bb12d866e232accf704278d036a3ae55f76"
  license "MIT"
  def install
    bin.install "GameMon-service"
  end
end
