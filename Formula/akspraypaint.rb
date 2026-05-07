class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.6/akspraypaint"
  sha256 "b3102ee587bce38e5a87fec6dac6eec1d42410019e4add22b0db95c79f072833"
  version "0.0.6"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
