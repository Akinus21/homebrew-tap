class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.134/akspraypaint"
  sha256 "703da4687c01ff31721ef656b274f93b3678e91f17bde785a5ddc57ab01ff5a4"
  version "0.0.134"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.134/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end
