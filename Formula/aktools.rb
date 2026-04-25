class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.35"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.35/aktools"
  sha256 "4bd7cb1365469cdfcc0cc708bd7fa13555e7e4c4f2103732b760ec6992143617"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end
