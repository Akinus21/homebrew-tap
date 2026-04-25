class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.50"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.50/aktools"
  sha256 "e696c5c29a00cb2d91444b524bf097adee969ce693651f3b048be4d39be5fcba"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end
