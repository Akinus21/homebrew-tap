class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.14/akspraypaint"
  sha256 "6f59e38b2a37b53d17d308578a15c652a2dba3475f5f63e18047f5a423f787db"
  version "0.0.14"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
