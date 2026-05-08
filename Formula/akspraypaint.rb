class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.57/akspraypaint"
  sha256 "2960570f60d389a40a1bdacd80efbda9d808ac10ce4786fd3b3a0c6a90254ea3"
  version "0.0.57"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
