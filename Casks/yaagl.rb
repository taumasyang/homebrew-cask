cask "yaagl" do
  version "0.2.24"
  sha256 "0136224cebf9a2035594d39db2f15a4749860afe03960a4577cc7c8c86860689"

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
