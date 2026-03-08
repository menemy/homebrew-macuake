cask "macuake" do
  version "0.1.1"
  sha256 "3ffd871a7cf82d60578ec45a296fad5d4ad21f3a12a32d5ca15910f467ca230d"

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
