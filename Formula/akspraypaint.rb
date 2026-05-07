class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.15/akspraypaint"
  sha256 "2951a8a8b55911a3aa0a90befb92247fe9dce567b393134a95fc7825f6ade08d"
  version "0.0.15"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
