cask "agentawake" do
  version "1.1.1"
  sha256 "48680c1dcd82fa2079c3bbf8b87ef1ba1d73424100d49ab470b6afc01cf3ddb5"

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
