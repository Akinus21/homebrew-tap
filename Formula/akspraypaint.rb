class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.70/akspraypaint"
  sha256 "af6ede00f75769e2009ba42d1a60afcc95e928afbe347e67badd86a1b4fef9c5"
  version "0.0.70"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
