class FlashPlanMcp < Formula
  desc "MCP server for FlashPlan - AI agent access to FlashPlan data"
  homepage "https://github.com/SamuelMauricioL/flash-plan-releases"
  version "1.3.5"
  url "https://github.com/SamuelMauricioL/flash-plan-releases/releases/download/v1.3.5/flash-plan-mcp-darwin-arm64.tar.gz"
  sha256 "b9fc23435e51ab226a18e4c8371fcada6ade560f2ec90fe5358d6b1b9dd7b0ab"

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
