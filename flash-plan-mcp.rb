class FlashPlanMcp < Formula
  desc "MCP server for FlashPlan - AI agent access to FlashPlan data"
  homepage "https://github.com/SamuelMauricioL/flash-plan-releases"
  version "1.3.6"
  url "https://github.com/SamuelMauricioL/flash-plan-releases/releases/download/v1.3.6/flash-plan-mcp-darwin-arm64.tar.gz"
  sha256 "90d664cd8868489a346d4db7f871dd6733503df618573c010f1f17dc37b95022"

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
