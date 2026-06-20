class FlashPlanMcp < Formula
  desc "MCP server for FlashPlan - AI agent access to FlashPlan data"
  homepage "https://github.com/SamuelMauricioL/flash-plan-releases"
  version "1.11.0"
  url "https://github.com/SamuelMauricioL/flash-plan-releases/releases/download/v1.11.0/flash-plan-mcp-darwin-arm64.tar.gz"
  sha256 "5635fa4d3cb1b01a5adfda19e9062353b2a8919cfe90fb3cc564fa0bc31383b5"

  def install
    bin.install "flash-plan-mcp-darwin-arm64" => "flash-plan-mcp"
  end

  test do
    assert_predicate bin/"flash-plan-mcp", :exist?
  end
end
