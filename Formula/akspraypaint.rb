class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.68/akspraypaint"
  sha256 "7bbdc94d311324fe8a5df7f40e7a90ca7d2fa99bdb6dcf1662f9a7104c6849b6"
  version "0.0.68"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
