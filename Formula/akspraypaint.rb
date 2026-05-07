class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.11/akspraypaint"
  sha256 "53b8db212c2648f78b81096030e236202182a2fdd5c93bd48ccc799124584af8"
  version "0.0.11"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
