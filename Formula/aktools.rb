class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.00.15"
  url "https://github.com/Akinus21/aktools/releases/download/v0.00.15/aktools"
  sha256 "5797f9a058c154d8809bde9145b29f4af15633cc058ef33c0ed3a2456721766a"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end
