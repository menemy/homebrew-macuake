cask "macuake" do
  version "0.1.0"
  sha256 "a8a0777e809a3e5b278f20c4e7e1e9a70dacfbee01555f29d8c126a1cd86a0dd"

  url "https://github.com/menemy/macuake/releases/download/v#{version}/Macuake.dmg"
  name "Macuake"
  desc "Drop-down Quake-style terminal for macOS powered by Ghostty"
  homepage "https://macuake.com"

  depends_on macos: ">= :sonoma"

  app "Macuake.app"

  zap trash: [
    "~/Library/Preferences/com.macuake.terminal.plist",
    "~/Library/Application Support/macuake",
  ]
end
