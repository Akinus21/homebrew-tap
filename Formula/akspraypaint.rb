class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.21/akspraypaint"
  sha256 "846851b7363bcf9e58e67f3cc0426744b381cc7748b209be319c914d3073b33f"
  version "0.0.21"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
