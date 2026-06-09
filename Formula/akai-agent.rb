class AkaiAgent < Formula
  desc "Remote GPU worker agent for the akai-net distributed inference system"
  homepage "https://github.com/Akinus21/akai-agent"
  version "0.0.147"
  license "MIT"
  depends_on "cmake"
  depends_on "gcc"
  depends_on "git"
  on_linux do
    url "https://github.com/Akinus21/akai-agent/releases/download/v0.0.147/akai-agent"
    sha256 "8652a627ad4c88020b075a031be9c5f23c73d3468171bb1a8f8af6bd435cfb08"
  end
  def install
    bin.install "akai-agent" => "akai-agent"
  end
  test do
    assert_match "akai-agent", shell_output("#{bin}/akai-agent --help")
  end
end
