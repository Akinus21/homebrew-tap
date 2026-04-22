class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.00.2"
  url "https://github.com/Akinus21/aktools/releases/download/v0.00.2/aktools"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  def install
    bin.install "aktools"
  end

  test do
    system bin/"aktools", "--version"
  end
end