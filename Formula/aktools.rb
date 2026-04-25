class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.32"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.32/aktools"
  sha256 "d7519198d55fd9e1753657c175774e75e7785a9bd01dce168ee972fb0fba9974"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end
