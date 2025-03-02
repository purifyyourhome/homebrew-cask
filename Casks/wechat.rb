cask "wechat" do
  version "2.5.0.18"
  sha256 "423289c09531ba742c5f2cc5c0d87fe981592d1edfbef6fc94ddd83875be76cd"

  url "https://dldir1.qq.com/weixin/mac/WeChatMac.dmg"
  # There is an appcast at https://dldir1.qq.com/weixin/mac/mac-release.xml,
  # but it's slower to update than the submissions we get. See:
  #   https://github.com/Homebrew/homebrew-cask/pull/90907#issuecomment-710107547
  name "WeChat for Mac"
  name "微信 Mac 版"
  desc "Free messaging and calling application"
  homepage "https://mac.weixin.qq.com/"

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "WeChat.app"

  uninstall quit: "com.tencent.xinWeChat"

  zap trash: [
    "~/Library/Application Scripts/com.tencent.xinWeChat",
    "~/Library/Caches/com.tencent.xinWeChat",
    "~/Library/Containers/com.tencent.xinWeChat",
    "~/Library/Cookies/com.tencent.xinWeChat.binarycookies",
    "~/Library/Group Containers/$(TeamIdentifierPrefix)com.tencent.xinWeChat",
    "~/Library/Preferences/com.tencent.xinWeChat.plist",
  ]
end
