class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.41/akspraypaint"
  sha256 "2dbd0a32419cec517b781e30a8b6befd4ca41a2d5fbf1874e67a5e78ee281de6"
  version "0.0.41"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
