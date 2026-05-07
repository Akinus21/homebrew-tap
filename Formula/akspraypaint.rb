class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.4/akspraypaint"
  sha256 "077cdce54ce8590d3e27b899d853a262b383da9ed63f8c83a10484c740fc8eb8"
  version "0.0.4"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
