class FlashPlanMcp < Formula
  desc "MCP server for FlashPlan - AI agent access to FlashPlan data"
  homepage "https://github.com/SamuelMauricioL/flash-plan-releases"
  version "1.9.0"
  url "https://github.com/SamuelMauricioL/flash-plan-releases/releases/download/v1.9.0/flash-plan-mcp-darwin-arm64.tar.gz"
  sha256 "49401bb71d0a046e5471fa3d112fc38a55f1d203e6eda730fa3b595d4b6f16ac"

  def install
    bin.install "flash-plan-mcp-darwin-arm64" => "flash-plan-mcp"
  end

  test do
    assert_predicate bin/"flash-plan-mcp", :exist?
  end
end
