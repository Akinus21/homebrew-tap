class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.2/akspraypaint"
  sha256 "cdd84d6ea0a00a395947d0c7aaa425b62d9c3ade3b2dae05259f2d8874a3f664"
  version "0.0.2"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
