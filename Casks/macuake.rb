cask "macuake" do
  version "0.1.2"
  sha256 "e0afb08901aaae6a178ed5947f349293e0ac477c05d5e80508f90a513932a2eb"

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
