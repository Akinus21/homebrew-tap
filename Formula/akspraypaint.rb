class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.44/akspraypaint"
  sha256 "af3c2315deb4908bb6c8f27c39a0910aac939ef465c88bc3457f28de05f69b26"
  version "0.0.44"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
