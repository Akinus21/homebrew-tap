class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.7/akspraypaint"
  sha256 "9c906d6790c1cb268bb0872efcda39f8a17d4187e0b3a826c8685761c8cf99c3"
  version "0.0.7"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
