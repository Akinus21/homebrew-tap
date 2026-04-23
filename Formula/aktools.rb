class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.00.18"
  url "https://github.com/Akinus21/aktools/releases/download/v0.00.18/aktools"
  sha256 "31b17a0663e330785511b7857373b845c83df62c2a02e3b358f212e5287b05a7"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end
