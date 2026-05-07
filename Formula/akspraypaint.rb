class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.5/akspraypaint"
  sha256 "dba0597c45d139d01c5c3b83e4e40aeaf9dfb60a0016c45696e5ef3c7dae6b1c"
  version "0.0.5"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
