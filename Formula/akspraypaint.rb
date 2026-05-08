class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.58/akspraypaint"
  sha256 "73847243d938e17a85d76138edf800226219858bd1c88c765a290946d2493912"
  version "0.0.58"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
