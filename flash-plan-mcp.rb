class FlashPlanMcp < Formula
  desc "MCP server for FlashPlan - AI agent access to FlashPlan data"
  homepage "https://github.com/SamuelMauricioL/flash-plan-releases"
  version "1.6.0"
  url "https://github.com/SamuelMauricioL/flash-plan-releases/releases/download/v1.6.0/flash-plan-mcp-darwin-arm64.tar.gz"
  sha256 "6b42d19fce5c2f06838dd006bea01376830a6fee2fa8580649ad7de5d2ccce35"

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
