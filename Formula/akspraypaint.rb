class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.45/akspraypaint"
  sha256 "2cd5541d2f138ea05b163469ae47b76e1af993caa9f93d85ca950206edb61756"
  version "0.0.45"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
