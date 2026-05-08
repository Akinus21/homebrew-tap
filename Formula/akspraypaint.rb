class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.40/akspraypaint"
  sha256 "9208dd96f1854a146da3fbd7893ac9f83cacc1e94cb39e7e1fe3c7fdfffd5f52"
  version "0.0.40"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
