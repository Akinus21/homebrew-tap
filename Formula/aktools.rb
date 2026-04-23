class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.00.16"
  url "https://github.com/Akinus21/aktools/releases/download/v0.00.16/aktools"
  sha256 "0a9dba6fbe8f6dd748ff74a7f19fe4b407e634a7672f5dd6e5f869112c4bc40a"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end
