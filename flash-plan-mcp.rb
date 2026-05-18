class FlashPlanMcp < Formula
  desc "MCP server for FlashPlan - AI agent access to FlashPlan data"
  homepage "https://github.com/SamuelMauricioL/flash-plan-releases"
  version "1.4.1"
  url "https://github.com/SamuelMauricioL/flash-plan-releases/releases/download/v1.4.1/flash-plan-mcp-darwin-arm64.tar.gz"
  sha256 "4aed54a3139014d046393b6d5b7418a774556471d4b1b3def4a7bb91b0c9f0c9"

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
