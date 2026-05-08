class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.39/akspraypaint"
  sha256 "c033dc24c30dad78d31d135152c40dfa038e7bfa21b38ee3f350a091a011e95e"
  version "0.0.39"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
