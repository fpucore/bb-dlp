#!/bin/bash

# bb-dlp Updater (nightly)
# Downloads the latest yt-dlp nightly executable and installs it as bb-dlp-bin

set -e

RED=$'\033[1;31m'
NC=$'\033[0m' # No Color

BIN="$HOME/bb-dlp-bin"
TMP="$(mktemp "$HOME/.bb-dlp-bin.XXXXXX")"
URL="https://www.github.com/yt-dlp/yt-dlp-nightly-builds/releases/latest/download/yt-dlp_linux"

cleanup() {
    rm -f "$TMP"
}
trap cleanup EXIT

echo "${RED}[bb-dlp]${NC} Downloading latest nightly executable..."

if ! curl -fL --retry 3 "$URL" -o "$TMP"; then
    echo "${RED}[bb-dlp]${NC} ERROR: Failed to download nightly executable." >&2
    exit 1
fi

chmod +x "$TMP"

echo "${RED}[bb-dlp]${NC} Verifying downloaded binary..."

if ! "$TMP" --version >/dev/null 2>&1; then
    echo "${RED}[bb-dlp]${NC} ERROR: Downloaded binary failed verification." >&2
    exit 1
fi

VERSION="$("$TMP" --version)"

echo "${RED}[bb-dlp]${NC} Nightly version: $VERSION"
echo "${RED}[bb-dlp]${NC} Installing as $BIN..."

mv -f "$TMP" "$BIN"
chmod +x "$BIN"

echo "${RED}[bb-dlp]${NC} Installation successful."
echo ""
echo "${RED}[bb-dlp]${NC} Installed: $BIN"
echo "${RED}[bb-dlp]${NC} Version: $("$BIN" --version)"
