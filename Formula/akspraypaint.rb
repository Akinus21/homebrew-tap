class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.27/akspraypaint"
  sha256 "98bfb232e82a7dca7c546658b38e8374e59b0e6cb01ab5c618d15231b42222e3"
  version "0.0.27"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
