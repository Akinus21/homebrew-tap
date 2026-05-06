class Gamemon < Formula
  desc "GameMon service daemon"
  homepage "https://github.com/Akinus21/GameMon"
  url "https://github.com/Akinus21/GameMon/releases/download/v0.6.3/GameMon-service"
  sha256 "b2234bc6a5215beaf2ed67d65bcb0b8509992d8d139b48c46c477a3d4dfe9dbd"
  license "MIT"
  def install
    bin.install "GameMon-service"
  end
end
