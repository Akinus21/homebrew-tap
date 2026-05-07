class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.24/akspraypaint"
  sha256 "3361eb11a9e2a76ba5670ba7e01bd44d52756a62b0b08fbf95dab30a99c92a85"
  version "0.0.24"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
