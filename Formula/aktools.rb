class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.61"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.61/aktools"
  sha256 "f7cf56be02e277f8395c95346f1da6d14318c3bfe64299f6a85d2a86e2854451"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end
