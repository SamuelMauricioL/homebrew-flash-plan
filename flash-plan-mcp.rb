class FlashPlanMcp < Formula
  desc "MCP server for FlashPlan - AI agent access to FlashPlan data"
  homepage "https://github.com/SamuelMauricioL/flash-plan-releases"
  version "1.3.1"
  url "https://github.com/SamuelMauricioL/flash-plan-releases/releases/download/v1.3.1/flash-plan-mcp-darwin-arm64.tar.gz"
  sha256 "5b418ee89e5a4b5422bc510bb2cede62e9e214df424179b9eaef26b651ce73bc"

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
