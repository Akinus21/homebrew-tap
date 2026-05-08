class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.65/akspraypaint"
  sha256 "6b14e80120a63ccfb7682ebabe37eb688b1bef36f459b8bea874feb357774efa"
  version "0.0.65"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
