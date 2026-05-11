cask "klaudio-panels" do
  version "1.6.3"
  sha256 "33bc49763be2dfff3932c2d5b8efeac29a131eb84df4293fc825c254f47cec4d"

  url "https://github.com/willywg/klaudio-panels/releases/download/v#{version}/Klaudio.Panels_#{version}_universal.dmg"
  name "Klaudio Panels"
  desc "Native window embedding the Claude Code CLI"
  homepage "https://github.com/willywg/klaudio-panels"

  app "Klaudio Panels.app"

  zap trash: [
    "~/Library/Application Support/com.willywg.klaudio-panels",
    "~/Library/Caches/com.willywg.klaudio-panels",
    "~/Library/Logs/Klaudio Panels",
    "~/Library/Preferences/com.willywg.klaudio-panels.plist",
    "~/Library/Saved Application State/com.willywg.klaudio-panels.savedState",
    "~/Library/WebKit/com.willywg.klaudio-panels",
  ]

  caveats <<~EOS
    Klaudio Panels is not yet signed with an Apple Developer ID. On first
    launch, macOS will show one of these warnings:

      1. "Klaudio Panels" can't be opened because it is from an
         unidentified developer.
         → Right-click the app in /Applications, choose Open, then click
           Open in the confirmation dialog. One-time approval; after that
           it launches normally forever.

      2. "Klaudio Panels" is damaged and can't be opened.
         → Run once in Terminal:
             xattr -cr "/Applications/Klaudio Panels.app"
           Then open the app normally.

    The app is open source — inspect before you run:
      https://github.com/willywg/klaudio-panels
  EOS
end
