class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.50/akspraypaint"
  sha256 "3d2329487560b424f78a7bd5008a4b0f0caede66ae8e68ee195159eeee5c3709"
  version "0.0.50"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
