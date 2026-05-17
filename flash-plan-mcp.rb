class FlashPlanMcp < Formula
  desc "MCP server for FlashPlan - AI agent access to FlashPlan data"
  homepage "https://github.com/SamuelMauricioL/flash-plan-releases"
  version "1.3.0"
  url "https://github.com/SamuelMauricioL/flash-plan-releases/releases/download/v1.3.0/flash-plan-mcp-darwin-arm64.tar.gz"
  sha256 "2f50bbdaff2f5e5b7302fee63d3d744925c8c8f8e231ea9ed1b5db93f2d9f661"

  def install
    bin.install "flash-plan-mcp-darwin-arm64" => "flash-plan-mcp"
  end

  test do
    assert_predicate bin/"flash-plan-mcp", :exist?
  end
end
