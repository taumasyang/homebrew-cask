cask "yaagl" do
  version "0.2.25"
  sha256 "027cb0447706a684e340b29eb6300e093807920bf5e60f044134e527c7ef742b"

  on_arm do
    depends_on macos: ">= :sonoma"
  end
  on_intel do
    depends_on macos: ">= :high_sierra"
  end

  url "https://github.com/yaagl/yet-another-anime-game-launcher/releases/download/#{version}/Yaagl.app.tar.gz"
  name "Yaagl"
  desc "Yet another anime game launcher"
  homepage "https://github.com/yaagl/yet-another-anime-game-launcher"

  livecheck do
    url :url
    strategy :github_releases
  end

  auto_updates true

  app "Yaagl.app"

  zap trash: [
    "~/Library/Application Support/Yaagl",
    "~/Library/Caches/com.3shain.yaagl",
    "~/Library/WebKit/com.3shain.yaagl",
  ]

  caveats do
    requires_rosetta
  end
end
