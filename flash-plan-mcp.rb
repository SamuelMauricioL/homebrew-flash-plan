class FlashPlanMcp < Formula
  desc "MCP server for FlashPlan - AI agent access to FlashPlan data"
  homepage "https://github.com/SamuelMauricioL/flash-plan-releases"
  version "1.9.2"
  url "https://github.com/SamuelMauricioL/flash-plan-releases/releases/download/v1.9.2/flash-plan-mcp-darwin-arm64.tar.gz"
  sha256 "01a095b4748de7e586726d5554e19828bb723b706afa44b43556e0a72481c4b3"

  def install
    bin.install "flash-plan-mcp-darwin-arm64" => "flash-plan-mcp"
  end

  test do
    assert_predicate bin/"flash-plan-mcp", :exist?
  end
end
