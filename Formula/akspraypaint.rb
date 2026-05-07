class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.3/akspraypaint"
  sha256 "80533a701627ffcf57302ff351a029612150a717f54bd359b4dce2cd3b65df2c"
  version "0.0.3"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
