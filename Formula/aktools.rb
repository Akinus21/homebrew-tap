class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.49"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.49/aktools"
  sha256 "7ba8d9921e48cb897e8ed397571e8afb517c95a2e49ea98ee4ccc19d67d4a00e"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end
