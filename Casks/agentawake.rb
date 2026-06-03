cask "agentawake" do
  version "1.0.0"
  sha256 "65c19fab15e9970a0d57d95642e269b08179b7511a531b4513b162085d2fcdf6"

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
