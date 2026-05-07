class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.8/akspraypaint"
  sha256 "ac853ddb34eb5eee8242f30d558f100d2f020820baf80cb1a494cbe9c1f91ff2"
  version "0.0.8"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
