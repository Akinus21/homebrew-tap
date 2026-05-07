class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.26/akspraypaint"
  sha256 "75706796bf44022246d9e1bbd8bfcbf2a7b46822af412f5e2c37979c0b411d6b"
  version "0.0.26"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
