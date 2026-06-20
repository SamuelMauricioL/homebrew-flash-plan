class FlashPlanMcp < Formula
  desc "MCP server for FlashPlan - AI agent access to FlashPlan data"
  homepage "https://github.com/SamuelMauricioL/flash-plan-releases"
  version "1.9.1"
  url "https://github.com/SamuelMauricioL/flash-plan-releases/releases/download/v1.9.1/flash-plan-mcp-darwin-arm64.tar.gz"
  sha256 "7c8c4608e58057cfb832cdd2cc2703ddcbf14122ad95d1c5fee186346b1222e9"

  def install
    bin.install "flash-plan-mcp-darwin-arm64" => "flash-plan-mcp"
  end

  test do
    assert_predicate bin/"flash-plan-mcp", :exist?
  end
end
