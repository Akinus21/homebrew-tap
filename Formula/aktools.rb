class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.44"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.44/aktools"
  sha256 "324de5b0b7dbc1cb7b261ec55885110d81bd30eb0fee9c3876fad56c9da5aea6"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end
