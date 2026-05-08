class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.49/akspraypaint"
  sha256 "4f522c27cac81ccd63151a0877b7ee327fe6f74e585c4a224501fd584a196fb1"
  version "0.0.49"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
