class AkaiAgent < Formula
  desc "Remote GPU worker agent for the akai-net distributed inference system"
  homepage "https://github.com/Akinus21/akai-agent"
  version "0.0.21"
  license "MIT"
  on_linux do
    url "https://github.com/Akinus21/akai-agent/releases/download/v0.0.21/akai-agent"
    sha256 "0880c7cc4761df86e70a1605ae574d66c5751330db0daf70ef039e59b51ceade"
  end
  def install
    bin.install "akai-agent" => "akai-agent"
  end
  test do
    assert_match "akai-agent", shell_output("#{bin}/akai-agent --help")
  end
end
