cask "macuake" do
  version "0.1.7"
  sha256 "3d3917ac21c17439c3a0f54b721124093d374e5869f015b84cbfa42b360703fc"

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
