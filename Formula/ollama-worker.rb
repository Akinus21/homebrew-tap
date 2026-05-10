class OllamaWorker < Formula
  desc "Distributed Ollama worker node for ollama-queue"
  homepage "https://github.com/Akinus21/ollama-queue-agent"
  version "0.0.15"
  license "MIT"

  on_linux do
    url "https://github.com/Akinus21/ollama-queue-agent/releases/download/v0.0.15/ollama-worker"
    sha256 "0b9a0f2cc6a4de34227eead34bd79934e539e552c61fbefca8c111fb2c404dca"
  end

  def install
    bin.install "ollama-worker"
  end

  test do
    assert_match "ollama-worker", shell_output("#{bin}/ollama-worker --help")
  end
end
