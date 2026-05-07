class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.16/akspraypaint"
  sha256 "c5e567c6f87de7ac1593e3f9c3b802f207f03c890f21d504158909131f86c076"
  version "0.0.16"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
