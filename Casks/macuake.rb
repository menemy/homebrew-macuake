cask "macuake" do
  version "0.1.3"
  sha256 "1ed238f5edcd836886cab78750ecf76c7bc29d26dc38c181d838e793a37bfeb7"

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
