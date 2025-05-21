cask "yaagl" do
  version "0.2.23"
  sha256 "4dc47441dfdf6b0b6d9c80b0e44d0f9be4c651884a53544d2d2951f0ad74ab8b"

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
