class Pastget < Formula
  desc "Retrieve a paste from your Pasty instance"
  homepage "https://github.com/Akinus21/homebrew-tap"
  version "1.0.0"
  license "MIT"

  url "https://raw.githubusercontent.com/Akinus21/homebrew-tap/master/Formula/pastget.rb"
  sha256 "your-sha256-here"

  uses_from_macos "curl"

  def install
    (bin/"pastget").write <<~SH
      #!/bin/bash
      INPUT="$1"
      if [ -z "$INPUT" ]; then
        echo "Usage: pastget <key or URL>" >&2
        exit 1
      fi
      # Strip to just the key if a full URL was passed
      KEY="${INPUT##*/}"
      curl -s "https://paste.akinus21.com/api/v1/pastes/${KEY}" | jq -r '.content'
    SH
    chmod "+x", bin/"pastget"
  end

  test do
    assert_match "pastget", shell_output("which pastget")
  end
end
