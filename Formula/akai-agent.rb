class AkaiAgent < Formula
  desc "Remote GPU worker agent for the akai-net distributed inference system"
  homepage "https://github.com/Akinus21/akai-agent"
  version "0.0.27"
  license "MIT"
  depends_on "cmake"
  depends_on "gcc"
  depends_on "git"
  on_linux do
    url "https://github.com/Akinus21/akai-agent/releases/download/v0.0.27/akai-agent"
    sha256 "d51ee341fee6840ad3445c37cb7e34e7f12b7db6c6e5bbad4e9d208393d1966f"
  end
  resource "rpc-cuda" do
    url "https://github.com/Akinus21/akai-agent/releases/download/v0.0.27/akai-agent-rpc-cuda-linux-x86_64.tar.gz"
    sha256 "b2e64ad3e4619845d5a9f5e0e322b3ccd554d2babc38bff27447d64046dfb57a"
  end
  def install
    bin.install "akai-agent" => "akai-agent"
  end
  def post_install
    if OS.linux? && Hardware::CPU.intel?
      begin
        resource("rpc-cuda").stage do
          rpc_dest = File.expand_path("~/.local/share/akai-agent")
          lib_dest = File.join(rpc_dest, "lib")
          FileUtils.mkdir_p(lib_dest)
          FileUtils.cp("rpc-server", rpc_dest, preserve: true) if File.exist?("rpc-server")
          FileUtils.cp("llama-rpc-server", rpc_dest, preserve: true) if File.exist?("llama-rpc-server")
          FileUtils.cp_r("lib/.", lib_dest, preserve: true) if File.exist?("lib")
          chmod 0755, File.join(rpc_dest, "rpc-server") if File.exist?(File.join(rpc_dest, "rpc-server"))
        end
      rescue => e
        opoo "rpc-server with CUDA not installed: #{e}"
        opoo "The agent will attempt to build from source on first run."
      end
    end
  end
  test do
    assert_match "akai-agent", shell_output("#{bin}/akai-agent --help")
  end
end
