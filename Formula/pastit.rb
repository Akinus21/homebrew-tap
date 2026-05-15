class Pastit < Formula
  desc "Pipe output to your Pasty instance"
  homepage "https://paste.akinus21.com"
  version "1.0.0"
  license "MIT"

  # No build step needed - pure shell script
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
    bin.install "pastit"
  end

  test do
    assert_match "pastit", shell_output("which pastit")
  end
end
