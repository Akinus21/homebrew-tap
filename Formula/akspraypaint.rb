class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.66/akspraypaint"
  sha256 "8e1f6bc134465e64103801c9291f6c8de7ad15c6f92f34d254679ac21c185d9d"
  version "0.0.66"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
