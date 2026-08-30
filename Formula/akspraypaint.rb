class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.71/akspraypaint"
  sha256 "07f850bb22ab477c198130ee1e29aa2b64afe36ac999486b508f0fb5f42c77ef"
  version "0.0.71"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
