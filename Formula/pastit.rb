class Pastit < Formula
  desc "Pipe output to your Pasty instance"
  homepage "https://github.com/Akinus21/homebrew-tap"
  version "1.0.1"
  license "MIT"

  url "https://raw.githubusercontent.com/Akinus21/homebrew-tap/master/Formula/pastit.rb"
  sha256 "983218bb734ee0ede11f9c95e6fb8f9a09856b66412d69ab37a0b5111feaebc2"

  depends_on "jq"
  uses_from_macos "curl"

  def install
    (bin/"pastit").write <<~SH
      #!/bin/bash
      response=$(curl -s -w "\\n%{http_code}" -X POST https://paste.akinus21.com/documents \
        -H "Content-Type: text/plain" \
        --data-binary @-)
      http_code=$(printf "%s" "$response" | tail -n1)
      body=$(printf "%s" "$response" | sed '$d')
      if [ "$http_code" -ne 200 ]; then
        echo "Paste failed (HTTP $http_code): $body" >&2
        exit 1
      fi
      printf "%s" "$body" | jq -r '"https://paste.akinus21.com/" + .key'
    SH
    chmod "+x", bin/"pastit"
  end

  test do
    assert_match "pastit", shell_output("which pastit")
  end
end