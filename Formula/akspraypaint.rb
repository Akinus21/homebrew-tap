class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.25/akspraypaint"
  sha256 "f6d322cadb96c9ab4a5a9326ad55543ace415c1ddd7cd07b730139499ed9d239"
  version "0.0.25"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
