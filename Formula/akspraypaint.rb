class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.23/akspraypaint"
  sha256 "babecfd4557e4b9c3d00b4ca52de03a0c203016d35472a89290f460513dbf346"
  version "0.0.23"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
