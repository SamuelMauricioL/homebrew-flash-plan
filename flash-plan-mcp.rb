class FlashPlanMcp < Formula
  desc "MCP server for FlashPlan - AI agent access to FlashPlan data"
  homepage "https://github.com/SamuelMauricioL/flash-plan-releases"
  version "1.1.0"
  url "https://github.com/SamuelMauricioL/flash-plan-releases/releases/download/v1.1.0/flash-plan-mcp-darwin-arm64.tar.gz"
  sha256 "bd89306a21a40efeaaba95c092ae171049be42f5b8311413b4eeb61079223885"

  def install
    bin.install "flash-plan-mcp-darwin-arm64" => "flash-plan-mcp"
  end

  test do
    assert_predicate bin/"flash-plan-mcp", :exist?
  end
end
