cask "macuake" do
  version "0.1.8"
  sha256 "08353dba97b91dd3dbd25c3efd877508f42d451faa992ab5b92603871261d249"

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
