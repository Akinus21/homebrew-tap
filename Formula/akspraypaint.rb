class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.59/akspraypaint"
  sha256 "0dad373902a67843b704542b2ccd41dcf7652fa9c37543d791d44424ab9f756b"
  version "0.0.59"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
