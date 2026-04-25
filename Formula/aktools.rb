class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.52"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.52/aktools"
  sha256 "149cd431295ab558b3bb6f7b2fe8b8221c659b11e83978e712234e1eccc0798c"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end
