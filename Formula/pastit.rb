class Pastit < Formula
  desc "Pipe output to your Pasty instance"
  homepage "https://github.com/Akinus21/homebrew-tap"
  version "1.0.1"
  license "MIT"

  url "https://raw.githubusercontent.com/Akinus21/homebrew-tap/master/Formula/pastit.rb"
  sha256 "50d0c12b78f34ee68c7d5a68549c5373a95ddd729f5e4d03a0f8a1470fed4eb0"

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