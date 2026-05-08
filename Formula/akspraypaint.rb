class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.42/akspraypaint"
  sha256 "622a42942907a193a8d1afadb2592b5eb9d0f954885e9077670a98414edfc40a"
  version "0.0.42"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
