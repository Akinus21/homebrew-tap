class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.00.33"
  url "https://github.com/Akinus21/aktools/releases/download/v0.00.33/aktools"
  sha256 "cd7c52c8b4dde66c9e3ec6d03a80eeb81a2adf43ab41f7245adfaf743e0c0ef4"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end
