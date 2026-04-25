class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.62"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.62/aktools"
  sha256 "3f0c61e4f5ae3c4ba44f19ac1722dbd431cce8878af444716fa5994a2cf2a6db"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end
