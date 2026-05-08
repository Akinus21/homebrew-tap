class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.64/akspraypaint"
  sha256 "fb6369331a80c03d4ca3774bf27cbf8cb374b48073c46c39d9886accb3893824"
  version "0.0.64"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
