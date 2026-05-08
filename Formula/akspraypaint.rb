class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.48/akspraypaint"
  sha256 "f0e7ecb742545aeb990aa1989a79ee97ac6c73b586cf472fde031f38552dcc07"
  version "0.0.48"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
