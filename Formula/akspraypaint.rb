class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.55/akspraypaint"
  sha256 "7edb17b793e3f95afa937e891ac4949eb45e1aaa010e4e4d6b8bfba4e3c036da"
  version "0.0.55"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
