class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.129/akspraypaint"
  sha256 "ccd121222d98c1809243bbb97ba68c36c5d203a7c2bb693dadc84a07febc2e57"
  version "0.0.129"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.129/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end
