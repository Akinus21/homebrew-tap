class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.07"
  url "https://github.com/Akinus21/aktools/releases/download/v0.07/aktools-v1.00-linux-x86_64.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  def install
    bin.install "aktools"
  end

  test do
    system bin/"aktools", "--version"
  end
end