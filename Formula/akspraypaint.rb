class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.43/akspraypaint"
  sha256 "e37c598815ccd22990599fb89072d0ee729a07aee8e5b479b47dc58905038312"
  version "0.0.43"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
