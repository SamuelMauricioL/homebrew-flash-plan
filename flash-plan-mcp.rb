class FlashPlanMcp < Formula
  desc "MCP server for FlashPlan - AI agent access to FlashPlan data"
  homepage "https://github.com/SamuelMauricioL/flash-plan-releases"
  version "1.9.0"
  url "https://github.com/SamuelMauricioL/flash-plan-releases/releases/download/v1.9.0/flash-plan-mcp-darwin-arm64.tar.gz"
  sha256 "9f2dfc21aa69a34e4c9d9ba162c95bf58c4a3ac6a95c00f0f2fa6f09e0c6af0e"

  def install
    bin.install "flash-plan-mcp-darwin-arm64" => "flash-plan-mcp"
  end

  test do
    assert_predicate bin/"flash-plan-mcp", :exist?
  end
end
