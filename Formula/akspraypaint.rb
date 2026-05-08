class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.63/akspraypaint"
  sha256 "5e0fc4501b4255e75658a49ac4ca49b5bef7c3f0900f42c1ad0146c26af2fc8e"
  version "0.0.63"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
