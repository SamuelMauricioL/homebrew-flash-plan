class FlashPlanMcp < Formula
  desc "MCP server for FlashPlan - AI agent access to FlashPlan data"
  homepage "https://github.com/SamuelMauricioL/flash-plan-releases"
  version "1.10.0"
  url "https://github.com/SamuelMauricioL/flash-plan-releases/releases/download/v1.10.0/flash-plan-mcp-darwin-arm64.tar.gz"
  sha256 "892d7bbfa3f01421ba4d1dd52df3717b47faa38074192bc57ac48e68a934504f"

  def install
    bin.install "flash-plan-mcp-darwin-arm64" => "flash-plan-mcp"
  end

  test do
    assert_predicate bin/"flash-plan-mcp", :exist?
  end
end
