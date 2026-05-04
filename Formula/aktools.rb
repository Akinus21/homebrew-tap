class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.65"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.65/aktools"
  sha256 "4ff92a6ad6c48c3f0bb7131a5298d6596279b1949ac6305ef9286659cb3e5394"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end
