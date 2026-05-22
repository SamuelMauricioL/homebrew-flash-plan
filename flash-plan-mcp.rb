class FlashPlanMcp < Formula
  desc "MCP server for FlashPlan - AI agent access to FlashPlan data"
  homepage "https://github.com/SamuelMauricioL/flash-plan-releases"
  version "1.7.0"
  url "https://github.com/SamuelMauricioL/flash-plan-releases/releases/download/v1.7.0/flash-plan-mcp-darwin-arm64.tar.gz"
  sha256 "e04a098f699781aaef20f921351377004efab64dd9b5ccd2cb60215b155a3f86"

  def install
    bin.install "flash-plan-mcp-darwin-arm64" => "flash-plan-mcp"
  end

  test do
    assert_predicate bin/"flash-plan-mcp", :exist?
  end
end
