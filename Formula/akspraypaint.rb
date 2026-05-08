class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.52/akspraypaint"
  sha256 "56212757bfa98e978ca2b7007425fa9901dda67b067e22254f984cf35487abac"
  version "0.0.52"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
