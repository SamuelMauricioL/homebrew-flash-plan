class FlashPlanMcp < Formula
  desc "MCP server for FlashPlan - AI agent access to FlashPlan data"
  homepage "https://github.com/SamuelMauricioL/flash-plan-releases"
  version "1.4.3"
  url "https://github.com/SamuelMauricioL/flash-plan-releases/releases/download/v1.4.3/flash-plan-mcp-darwin-arm64.tar.gz"
  sha256 "87baa4de35e06d23f1e33f46cdb8a633de6f82e603a00cdacefcc4282417b9cf"

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
