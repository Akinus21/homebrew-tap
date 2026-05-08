class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.56/akspraypaint"
  sha256 "d7e722999d2e7f1d193deeee7aa8abfdbb4eac30e5140fe1d64051664f370d63"
  version "0.0.56"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
