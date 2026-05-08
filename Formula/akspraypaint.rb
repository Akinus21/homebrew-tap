class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.61/akspraypaint"
  sha256 "dae312c3956a9a02c50e86d2466c552eedf528bf1d7839bb327acc3dbbd83bd2"
  version "0.0.61"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
