class FlashPlanMcp < Formula
  desc "MCP server for FlashPlan - AI agent access to FlashPlan data"
  homepage "https://github.com/SamuelMauricioL/flash-plan-releases"
  version "1.10.2"
  url "https://github.com/SamuelMauricioL/flash-plan-releases/releases/download/v1.10.2/flash-plan-mcp-darwin-arm64.tar.gz"
  sha256 "38b3de18fc23288c0ae51077609598ff71df6d2ada0f0ab142756ea5d0e5daa8"

  def install
    bin.install "flash-plan-mcp-darwin-arm64" => "flash-plan-mcp"
  end

  test do
    assert_predicate bin/"flash-plan-mcp", :exist?
  end
end
