cask "agentawake" do
  version "1.2.0"
  sha256 "d8972b3d0f42edcf1478181a3fd45318ad3f51dd321048b912bf015ed1730a9b"

  url "https://github.com/wulonglin/AgentAwake/releases/download/v#{version}/AgentAwake-#{version}.dmg"
  name "AgentAwake"
  desc "Keep your Mac awake while AI agents are running"
  homepage "https://github.com/wulonglin/AgentAwake"

  depends_on macos: :ventura

  app "AgentAwake.app"

  postflight do
    system "xattr", "-cr", "#{appdir}/AgentAwake.app"
  end

  zap trash: [
    "~/.agentawake",
  ]
end
