class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.18/akspraypaint"
  sha256 "b071764d07d5924a7230c9acf1d68fd1697d2fc046995a495dd00cf223787368"
  version "0.0.18"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
