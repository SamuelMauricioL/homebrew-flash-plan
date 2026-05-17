class FlashPlanMcp < Formula
  desc "MCP server for FlashPlan - AI agent access to FlashPlan data"
  homepage "https://github.com/SamuelMauricioL/flash-plan-releases"
  version "1.2.0"
  url "https://github.com/SamuelMauricioL/flash-plan-releases/releases/download/v1.2.0/flash-plan-mcp-darwin-arm64.tar.gz"
  sha256 "bfb4e9e90133f03de7f4a7f1692ef5d90f86212e4622b731bd96fa8bdc1b25cf"

  def install
    bin.install "flash-plan-mcp-darwin-arm64" => "flash-plan-mcp"
  end

  test do
    assert_predicate bin/"flash-plan-mcp", :exist?
  end
end
