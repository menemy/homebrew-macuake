cask "macuake" do
  version "0.2.0"
  sha256 "0dfb90f17f21354b7af700ce162d31b4b327dc2c4069a9f9aa2ad679eafed89c"

  url "https://github.com/menemy/macuake/releases/download/v#{version}/Macuake.dmg"
  name "Macuake"
  desc "Drop-down Quake-style terminal for macOS powered by Ghostty"
  homepage "https://macuake.com"

  depends_on macos: :sonoma

  app "Macuake.app"

  zap trash: [
    "~/Library/Preferences/com.macuake.terminal.plist",
    "~/Library/Application Support/macuake",
  ]
end
