class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.47/akspraypaint"
  sha256 "015e7c91fab5694dc2b82669236b95921a64e02ef096e22d84e9e106dda472e3"
  version "0.0.47"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
