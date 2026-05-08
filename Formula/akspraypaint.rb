class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.62/akspraypaint"
  sha256 "f984f6e00086843641bebc53a8b2fc93eb3b54d5ee9101624b8d276c7fe18fe5"
  version "0.0.62"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
