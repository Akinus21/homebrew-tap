class AkaiAgent < Formula
  desc "Remote GPU worker agent for the akai-net distributed inference system"
  homepage "https://github.com/Akinus21/akai-agent"
  version "0.0.30"
  license "MIT"
  depends_on "cmake"
  depends_on "gcc"
  depends_on "git"
  on_linux do
    url "https://github.com/Akinus21/akai-agent/releases/download/v0.0.30/akai-agent"
    sha256 "a366325333406d9ae82690cd51b4b14b42604a381d686ad04bcff418a3041d42"
  end
  resource "rpc-cuda" do
    url "https://github.com/Akinus21/akai-agent/releases/download/v0.0.30/akai-agent-rpc-cuda-linux-x86_64.tar.gz"
    sha256 "4c7efa1e3b163ef175acf42e7f638d840479eb53ec4a0b8b79591a2e3e7ce16b"
  end
  def install
    bin.install "akai-agent" => "akai-agent"
    if OS.linux? && Hardware::CPU.intel?
      resource("rpc-cuda").stage do
        share.install "rpc-server" => "akai-agent/rpc-server" if File.exist?("rpc-server")
        share.install "llama-rpc-server" => "akai-agent/llama-rpc-server" if File.exist?("llama-rpc-server")
        lib_share = share/"akai-agent/lib"
        lib_share.install Dir["lib/*"] if File.exist?("lib")
      end
    end
  end
  test do
    assert_match "akai-agent", shell_output("#{bin}/akai-agent --help")
  end
end
