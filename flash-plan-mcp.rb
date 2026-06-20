class FlashPlanMcp < Formula
  desc "MCP server for FlashPlan - AI agent access to FlashPlan data"
  homepage "https://github.com/SamuelMauricioL/flash-plan-releases"
  version "1.8.1"
  url "https://github.com/SamuelMauricioL/flash-plan-releases/releases/download/v1.8.1/flash-plan-mcp-darwin-arm64.tar.gz"
  sha256 "836e35161587fb7d1839bb9a7ec92399adb5763b86e69693909eb2b204ede5bd"

  def install
    bin.install "flash-plan-mcp-darwin-arm64" => "flash-plan-mcp"
  end

  test do
    assert_predicate bin/"flash-plan-mcp", :exist?
  end
end
