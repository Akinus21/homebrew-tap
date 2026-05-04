class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.64"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.64/aktools"
  sha256 "266e69b650648f7dc10b0b520d86a4fc8d2178bb8afbf95f0efc243344a9448f"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end
