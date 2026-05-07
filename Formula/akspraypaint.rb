class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.35/akspraypaint"
  sha256 "c8d40d25cdab4088f38fbb0c09948e1ada31be535db27650128595112e7dfb11"
  version "0.0.35"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
