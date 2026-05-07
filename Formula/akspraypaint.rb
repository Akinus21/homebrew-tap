class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.36/akspraypaint"
  sha256 "ba55af8e4bbd78a66afb368a90c028d9d1f0374d098c9a28b1a0653344ec2c76"
  version "0.0.36"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
