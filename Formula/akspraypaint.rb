class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.51/akspraypaint"
  sha256 "d0e0012a9b2f843094966b9618a5a9336060476bf5a487e89927c17d34355db2"
  version "0.0.51"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
