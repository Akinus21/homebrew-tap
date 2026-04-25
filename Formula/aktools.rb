class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.41"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.41/aktools"
  sha256 "440a367421be7d3bfbb829a05b58067be378298012efb98dbc34baa71f3d4c27"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end
