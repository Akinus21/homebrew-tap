class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.12/akspraypaint"
  sha256 "973fe4725ed0ebe6e7cccc54cc83fc7d22064697e537d1df34f5778c50a68da9"
  version "0.0.12"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
