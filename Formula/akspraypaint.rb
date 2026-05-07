class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.13/akspraypaint"
  sha256 "323039c9d3a1d0c8b5e7456f959c4a706879bc032fb155b218a79ba8e7bcb467"
  version "0.0.13"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
