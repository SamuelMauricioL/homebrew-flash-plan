class FlashPlanMcp < Formula
  desc "MCP server for FlashPlan - AI agent access to FlashPlan data"
  homepage "https://github.com/SamuelMauricioL/flash-plan-releases"
  version "1.4.2"
  url "https://github.com/SamuelMauricioL/flash-plan-releases/releases/download/v1.4.2/flash-plan-mcp-darwin-arm64.tar.gz"
  sha256 "aac5d6efa1cc8417325bd12e8da1e6290a12a717cd2818d444ae23aa0f7dc2c1"

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
