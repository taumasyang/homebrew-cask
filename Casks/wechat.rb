cask "wechat" do
  version "4.0.5.13"
  sha256 "883fdd2a9837d73e7279523a0473479ebac729451bc23627b79db75192160e29"

  url "https://dldir1v6.qq.com/weixin/Universal/Mac/WeChatMac.dmg"
  name "WeChat for Mac"
  name "微信 Mac 版"
  desc "Free messaging and calling application"
  homepage "https://mac.weixin.qq.com/"

  livecheck do
    url "https://dldir1.qq.com/weixin/mac/mac-release.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "WeChat.app"

  uninstall quit: "com.tencent.xinWeChat"

  zap trash: [
    "~/Library/Application Scripts/$(TeamIdentifierPrefix)com.tencent.xinWeChat",
    "~/Library/Application Scripts/$(TeamIdentifierPrefix)com.tencent.xinWeChat.IPCHelper",
    "~/Library/Application Scripts/com.tencent.xinWeChat",
    "~/Library/Application Scripts/com.tencent.xinWeChat.MiniProgram",
    "~/Library/Application Scripts/com.tencent.xinWeChat.WeChatMacShare",
    "~/Library/Caches/com.tencent.xinWeChat",
    "~/Library/Containers/$(TeamIdentifierPrefix)com.tencent.xinWeChat.IPCHelper",
    "~/Library/Containers/com.tencent.xinWeChat",
    "~/Library/Containers/com.tencent.xinWeChat.MiniProgram",
    "~/Library/Containers/com.tencent.xinWeChat.WeChatMacShare",
    "~/Library/Cookies/com.tencent.xinWeChat.binarycookies",
    "~/Library/Group Containers/$(TeamIdentifierPrefix)com.tencent.xinWeChat",
    "~/Library/Preferences/com.tencent.xinWeChat.plist",
    "~/Library/Saved Application State/com.tencent.xinWeChat.savedState",
  ]
end
