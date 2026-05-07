class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.10/akspraypaint"
  sha256 "179b280907de2f611eea74f4f27762b8c6e802851672ed46ff234b1e57a163bf"
  version "0.0.10"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
