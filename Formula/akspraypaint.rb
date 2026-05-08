class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.60/akspraypaint"
  sha256 "fa436ed367dc07b0f1dfd97c015284b8863997dffbeedb85505562ddd4a0714f"
  version "0.0.60"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
