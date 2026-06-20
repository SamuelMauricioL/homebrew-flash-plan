class FlashPlanMcp < Formula
  desc "MCP server for FlashPlan - AI agent access to FlashPlan data"
  homepage "https://github.com/SamuelMauricioL/flash-plan-releases"
  version "1.10.1"
  url "https://github.com/SamuelMauricioL/flash-plan-releases/releases/download/v1.10.1/flash-plan-mcp-darwin-arm64.tar.gz"
  sha256 "a6dfe0dae9626b064fc352c9605e4409673979101c20b913e999612dfbd2bac8"

  def install
    bin.install "flash-plan-mcp-darwin-arm64" => "flash-plan-mcp"
  end

  test do
    assert_predicate bin/"flash-plan-mcp", :exist?
  end
end
