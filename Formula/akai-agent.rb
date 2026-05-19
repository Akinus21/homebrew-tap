class AkaiAgent < Formula
  desc "Remote GPU worker agent for the akai-net distributed inference system"
  homepage "https://github.com/Akinus21/akai-agent"
  version "0.0.19"
  license "MIT"
  on_linux do
    url "https://github.com/Akinus21/akai-agent/releases/download/v0.0.19/akai-agent"
    sha256 "cd580d8737e70b735c031923798ba0592ade343054881c07237d9dcffd787e48"
  end
  def install
    bin.install "akai-agent" => "akai-agent"
  end
  test do
    assert_match "akai-agent", shell_output("#{bin}/akai-agent --help")
  end
end
