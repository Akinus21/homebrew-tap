class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.37/akspraypaint"
  sha256 "e41bda6b9483a2f9c2ed371fb8b8d3c9dbe27cef955ebeb8df6064cb991be082"
  version "0.0.37"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
