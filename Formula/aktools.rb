class Aktools < Formula
  desc "Modular CLI tool runner with module registry"
  homepage "https://github.com/Akinus21/aktools"
  version "0.0.38"
  url "https://github.com/Akinus21/aktools/releases/download/v0.0.38/aktools"
  sha256 "5a3167aa7601b64505b42cea3b638c0fdb6ce7bf0f760e66d928069624217ecb"
  def install
    bin.install "aktools"
  end
  test do
    system bin/"aktools", "--version"
  end
end
