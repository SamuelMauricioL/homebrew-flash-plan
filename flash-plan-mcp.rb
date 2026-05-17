class FlashPlanMcp < Formula
  desc "MCP server for FlashPlan - AI agent access to FlashPlan data"
  homepage "https://github.com/SamuelMauricioL/flash-plan-releases"
  version "1.0.0"
  url "https://github.com/SamuelMauricioL/flash-plan-releases/releases/download/v1.0.0/flash-plan-mcp-darwin-arm64.tar.gz"
  sha256 "df764f4af50d2d424a12194732227d5ee36f6198ebf5144e85048a06443e5518"

  def install
    bin.install "flash-plan-mcp-darwin-arm64" => "flash-plan-mcp"
  end

  test do
    assert_predicate bin/"flash-plan-mcp", :exist?
  end
end
