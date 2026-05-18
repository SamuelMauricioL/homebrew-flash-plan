class FlashPlanMcp < Formula
  desc "MCP server for FlashPlan - AI agent access to FlashPlan data"
  homepage "https://github.com/SamuelMauricioL/flash-plan-releases"
  version "1.4.0"
  url "https://github.com/SamuelMauricioL/flash-plan-releases/releases/download/v1.4.0/flash-plan-mcp-darwin-arm64.tar.gz"
  sha256 "312d7eb1c5458f04fe2324031ae5a43dc2641804b6e15ca36e9184ba3f04c376"

  def install
    bin.install "flash-plan-mcp-darwin-arm64" => "flash-plan-mcp"
    # libobjectbox.dylib must live next to the binary (Dart FFI searches own dir first)
    bin.install "libobjectbox.dylib"
  end

  test do
    assert_predicate bin/"flash-plan-mcp", :exist?
    assert_predicate bin/"libobjectbox.dylib", :exist?
  end
end
