class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.67/akspraypaint"
  sha256 "f4ca6ba42da520ab6bd6a51e5fb8458d68f3f82d5393aa8216d773115caef633"
  version "0.0.67"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
