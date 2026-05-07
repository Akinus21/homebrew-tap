class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.30/akspraypaint"
  sha256 "28d5f1b1dc20691a9aa0611e64f0b511e67977690846974fd068d0e8a9facc36"
  version "0.0.30"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
