class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.46/akspraypaint"
  sha256 "71f558f7915ae38e25b6bbd7383ef2e3d86ad64326f67dfaad663ea4d4353555"
  version "0.0.46"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
