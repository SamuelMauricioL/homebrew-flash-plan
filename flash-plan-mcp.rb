class FlashPlanMcp < Formula
  desc "MCP server for FlashPlan - AI agent access to FlashPlan data"
  homepage "https://github.com/SamuelMauricioL/flash-plan-releases"
  version "1.3.3"
  url "https://github.com/SamuelMauricioL/flash-plan-releases/releases/download/v1.3.3/flash-plan-mcp-darwin-arm64.tar.gz"
  sha256 "d79926380fa8dc3541bb57974c092caf5dbf0e1845df92af131a1730a5a64bb0"

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
