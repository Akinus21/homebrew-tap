class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.63"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.63/aktools"
  sha256 "82bdaf00bdc46aeafc93d9edf98f2ac700d0b52594784bdb3fa94215ddbd2ac9"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end
