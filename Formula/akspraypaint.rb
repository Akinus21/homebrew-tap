class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.53/akspraypaint"
  sha256 "3ba256ee64e0d2f6165c002e6cd9e63c61b3a80553b0de05ba4a68adb4b45611"
  version "0.0.53"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
