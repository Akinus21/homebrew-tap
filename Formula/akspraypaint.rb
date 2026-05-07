class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.32/akspraypaint"
  sha256 "b153bdee483914904388c7a446aff750a5bf9a2f33364a7574a9c6d079cbc6aa"
  version "0.0.32"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
