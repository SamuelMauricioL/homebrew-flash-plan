class FlashPlanMcp < Formula
  desc "MCP server for FlashPlan - AI agent access to FlashPlan data"
  homepage "https://github.com/SamuelMauricioL/flash-plan-releases"
  version "1.0.1"
  url "https://github.com/SamuelMauricioL/flash-plan-releases/releases/download/v1.0.1/flash-plan-mcp-darwin-arm64.tar.gz"
  sha256 "194daff8f2254b5e01ea8cbb92265ed2bf60326aaef0e78972a47b9301573856"

  def install
    bin.install "flash-plan-mcp-darwin-arm64" => "flash-plan-mcp"
  end

  test do
    assert_predicate bin/"flash-plan-mcp", :exist?
  end
end
