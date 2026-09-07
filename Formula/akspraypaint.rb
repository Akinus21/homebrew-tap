class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.89/akspraypaint"
  sha256 "0791badfe3bc074c9144c2ddc29f914cee5bd61ac6e60de44ed18926b621171e"
  version "0.0.89"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.89/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end
