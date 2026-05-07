class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.38/akspraypaint"
  sha256 "9353d776ad244798c166d1967536c1ad9fbbe0471ad4b7eb9db08ffc66ad74b5"
  version "0.0.38"
  license "MIT"

  def install
    bin.install "akspraypaint"
  end
end
