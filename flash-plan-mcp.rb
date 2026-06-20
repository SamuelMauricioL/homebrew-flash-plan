class FlashPlanMcp < Formula
  desc "MCP server for FlashPlan - AI agent access to FlashPlan data"
  homepage "https://github.com/SamuelMauricioL/flash-plan-releases"
  version "1.8.0"
  url "https://github.com/SamuelMauricioL/flash-plan-releases/releases/download/v1.8.0/flash-plan-mcp-darwin-arm64.tar.gz"
  sha256 "b6cfe1c529261cb3eea72908b2e8cf8fcefdd589b710af46b851b99d50c35923"

  def install
    bin.install "flash-plan-mcp-darwin-arm64" => "flash-plan-mcp"
  end

  test do
    assert_predicate bin/"flash-plan-mcp", :exist?
  end
end
