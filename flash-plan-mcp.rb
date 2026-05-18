class FlashPlanMcp < Formula
  desc "MCP server for FlashPlan - AI agent access to FlashPlan data"
  homepage "https://github.com/SamuelMauricioL/flash-plan-releases"
  version "1.3.4"
  url "https://github.com/SamuelMauricioL/flash-plan-releases/releases/download/v1.3.4/flash-plan-mcp-darwin-arm64.tar.gz"
  sha256 "4a232a5a8b3d1b836fd579ae698abe6a420913e9930db2eda2df78542fcb0ed0"

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
