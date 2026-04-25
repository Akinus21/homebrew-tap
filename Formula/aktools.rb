class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.51"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.51/aktools"
  sha256 "7153ef3b3716c240345832a6239722ac215873179e18046e397d88b0260ebb8c"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end
