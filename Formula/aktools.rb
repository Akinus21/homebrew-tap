class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.37"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.37/aktools"
  sha256 "41e7f3af1d5f0d8db65c0cd18f19ca9980b5808b79c1eb0b5dc097f3254b2763"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end
