class Pastit < Formula
  desc "Pipe output to your Pasty instance"
  homepage "https://github.com/Akinus21/homebrew-tap"
  version "1.0.0"
  license "MIT"

  url "https://raw.githubusercontent.com/Akinus21/homebrew-tap/master/Formula/pastit.rb"
  sha256 "c5efd7ccda62135428cc6a80bc29abad9d09a6d4327c3375927e33d7a6066751"

  depends_on "jq"
  uses_from_macos "curl"

  def install
    (bin/"pastit").write <<~SH
      #!/bin/bash
      curl -s -X POST https://paste.akinus21.com/api/v1/documents \
        -H "Content-Type: text/plain" \
        --data-binary @- \
        | jq -r '"https://paste.akinus21.com/" + .key'
    SH
    chmod "+x", bin/"pastit"
  end

  test do
    assert_match "pastit", shell_output("which pastit")
  end
end
