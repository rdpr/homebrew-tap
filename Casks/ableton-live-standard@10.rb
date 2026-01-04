cask "ableton-live-standard@10" do
  version "10.1.43"
  sha256 "73c04b069f9636931ed585e8c936276a33ea4f24871ae494542739926cd15fa2"

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_standard_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name "Ableton Live Standard"
  homepage "https://www.ableton.com/en/live/"

  auto_updates true

  app "Ableton Live #{version.major} Standard.app"

  zap trash: "~/Library/*/*[Aa]bleton*",
      rmdir: "~/Music/Ableton/Factory Packs"
end
