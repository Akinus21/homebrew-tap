class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.31/akspraypaint"
  sha256 "56212dbcafc8472b07ffc71667bed989cb54aac5dd1128699aae3ccd8015cba4"
  version "0.0.31"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
