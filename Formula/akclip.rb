class Akclip < Formula
  desc "Clipboard tool with SSH-aware detection and streaming capture"
  homepage "https://github.com/Akinus21/akclip"
  version "0.1.1"
  license "MIT"

  url "https://raw.githubusercontent.com/Akinus21/homebrew-tap/master/Formula/akclip.rb"
  sha256 "de065d88e618c68649ac7f26d95e8ad138110b030fba573ee774c3c35a437be7"

  uses_from_macos "curl"
  uses_from_macos "gzip"

  def install
    (bin/"akclip").write <<~SH
      #!/usr/bin/env bash
      set -euo pipefail

      clipboard_tool() {
        if command -v wl-copy >/dev/null 2>&1; then
          echo "wl-copy"
        elif command -v xclip >/dev/null 2>&1; then
          echo "xclip"
        elif command -v pbcopy >/dev/null 2>&1; then
          echo "pbcopy"
        else
          echo "akclip: error: no clipboard tool found (need wl-copy, xclip, or pbcopy)" >&2
          exit 1
        fi
      }

      copy_to_clipboard() {
        local tool
        tool=$(clipboard_tool)
        case "$tool" in
          wl-copy) wl-copy ;;
          xclip)  xclip -i -selection clipboard ;;
          pbcopy) pbcopy ;;
        esac
      }

      print_help() {
        cat << 'EOF'
      Usage: akclip [-s|--stream] [-c|--clipboard-only]
           akclip captures stdin to the clipboard.
           With --stream (-s), accumulates all input then copies on Ctrl+C.
           With --clipboard-only (-c), enters interactive mode for manual paste+copy.
        Options:
           -s, --stream        Accumulate streaming input, copy on Ctrl+C
           -c, --clipboard-only  Interactive clipboard mode
           -h, --help          Show this help
           --version           Show version
        EOF
      }

      stream_mode() {
        local tmpfile
        tmpfile=$(mktemp)
        trap "rm -f '$tmpfile'" EXIT

        cat > "$tmpfile"
        copy_to_clipboard < "$tmpfile"
        echo "akclip: captured $(wc -c < "$tmpfile") bytes to clipboard" >&2
      }

      interactive_mode() {
        local tmpfileInteractive
        tmpfileInteractive=$(mktemp)

        # Chain INT/TERM cleanup so main EXIT trap still fires afterwards
        trap "
          copy_to_clipboard < '$tmpfileInteractive'
          rm -f '$tmpfileInteractive'
          exit 0
        " INT TERM

        echo "akclip: interactive mode — paste text, Ctrl+C to copy and exit" >&2
        cat > "$tmpfileInteractive"
      }

      main() {
        local tmpfile
        tmpfile=$(mktemp)
        trap "rm -f '$tmpfile'" EXIT

        if [[ ${1:-} == -s ]] || [[ ${1:-} == --stream ]]; then
          stream_mode
        elif [[ ${1:-} == -c ]] || [[ ${1:-} == --clipboard-only ]]; then
          interactive_mode
        elif [[ ${1:-} == -h ]] || [[ ${1:-} == --help ]]; then
          print_help
          exit 0
        elif [[ ${1:-} == --version ]]; then
          echo "akclip 0.1.0"
          exit 0
        else
          tee "$tmpfile" | copy_to_clipboard
        fi
      }

      main "$@"
    SH
    chmod 0755, bin/"akclip"
  end

  test do
    assert_match "akclip", shell_output("which akclip")
  end
end