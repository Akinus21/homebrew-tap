class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.54/akspraypaint"
  sha256 "db01d4a8fc2ec265ffa26ae7a73e707858e55bd9fbe693340aa7f0e3b8508412"
  version "0.0.54"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
