class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.17/akspraypaint"
  sha256 "2ddb88771ba2bbce013f44f34cf2043d8d174f89f91bb9f1390b97bb7db77654"
  version "0.0.17"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
