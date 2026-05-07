class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.19/akspraypaint"
  sha256 "a642bccfdfa33816c8254d65d255603f9105b7318f3cf874a3245e5511c86c47"
  version "0.0.19"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
