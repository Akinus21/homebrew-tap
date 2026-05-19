class AkaiAgent < Formula
  desc "Remote GPU worker agent for the akai-net distributed inference system"
  homepage "https://github.com/Akinus21/akai-agent"
  version "0.0.14"
  license "MIT"
  on_linux do
    url "https://github.com/Akinus21/akai-agent/releases/download/v0.0.14/akai-agent"
    sha256 "01efb5f12b4300b9528270887b811e571a18e8f721361243b2c2c18ba9a2fd15"
  end
  def install
    bin.install "akai-agent" => "akai-agent"
  end
  test do
    assert_match "akai-agent", shell_output("#{bin}/akai-agent --help")
  end
end
