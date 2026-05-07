class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.28/akspraypaint"
  sha256 "fea94bd2656eaefa443f8b74b86c8e032d74a3aefdb04136323744037a1079bc"
  version "0.0.28"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
