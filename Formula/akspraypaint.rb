class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.22/akspraypaint"
  sha256 "c93c31031b917dde2a53fbfac2b72b00f7259037be5ed7e12de8092be20413b0"
  version "0.0.22"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
