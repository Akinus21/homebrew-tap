class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.9/akspraypaint"
  sha256 "1d0eecceea76061e3625d6dadadf27d4de0eaae99544bfcc781cb4dd7f5792a0"
  version "0.0.9"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
