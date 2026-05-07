class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.33/akspraypaint"
  sha256 "69a2d6097c7a5e7ce27508a38382e4d4960ac191de80cc8df2e1d78b6b44c246"
  version "0.0.33"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
