class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.34/akspraypaint"
  sha256 "940288865c09d1b9e18690c5ec82c56f74ab809e08e32c4bdedb76064215f897"
  version "0.0.34"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
