class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.29/akspraypaint"
  sha256 "afa2a44e223aeb1ef30f9d4e693574f70855467745f572b5a0eafcbaf1ccd319"
  version "0.0.29"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
