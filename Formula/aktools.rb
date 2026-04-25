class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.34"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.34/aktools"
  sha256 "c72542261ba756e965cd0f68f462b9c4531eca697223e5d939cbc00c5d1ff56c"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end
