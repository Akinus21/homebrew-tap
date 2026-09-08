class Akspraypaint < Formula
  desc "AKSprayPaint command line utility"
  homepage "https://github.com/Akinus21/AKSprayPaint"
  url "https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.118/akspraypaint"
  sha256 "a0fcbe7c68a908e24a28750373c7e676cf1e4394d1b6392c3198d32fa03a650e"
  version "0.0.118"
  license "MIT"

  def install
    bin.install "akspraypaint"
    system "curl -sL https://github.com/Akinus21/AKSprayPaint/releases/download/v0.0.118/matugen -o #{bin}/matugen"
    chmod "+x", "#{bin}/matugen"
  end
end
