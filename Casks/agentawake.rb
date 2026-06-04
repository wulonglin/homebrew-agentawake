cask "agentawake" do
  version "1.1.0"
  sha256 "73e24d7f9a891acb3c97ed9a4dbd46b71ce33c186a9ba478506a12a2f5ebe7f2"

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
