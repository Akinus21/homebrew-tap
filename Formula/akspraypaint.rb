class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.20/akspraypaint"
  sha256 "d05cd165ade1384bbd536680153464b9ab84fcd62e87708b51d36eb9efee51d3"
  version "0.0.20"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
