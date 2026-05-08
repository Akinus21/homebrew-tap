class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.69/akspraypaint"
  sha256 "1fca6e6bac290f8d6df4597a3b427bbdfa293f730bff3dd24f90f90f8103bd6a"
  version "0.0.69"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
