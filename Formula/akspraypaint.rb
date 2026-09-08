class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.116/akspraypaint"
  sha256 "c52fd5f228e30116606e512345bcd77115cde88db8ad5a9244fbe2ab64e55c7e"
  version "0.0.116"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.116/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end
