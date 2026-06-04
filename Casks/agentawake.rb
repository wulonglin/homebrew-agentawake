cask "agentawake" do
  version "1.1.0"
  sha256 "8386dbf3ecf8bb94221ea5c665d8192af248ac88a9f2bef562b14b8c6d8027b3"

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
