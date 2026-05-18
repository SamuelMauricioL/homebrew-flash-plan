class FlashPlanMcp < Formula
  desc "MCP server for FlashPlan - AI agent access to FlashPlan data"
  homepage "https://github.com/SamuelMauricioL/flash-plan-releases"
  version "1.3.7"
  url "https://github.com/SamuelMauricioL/flash-plan-releases/releases/download/v1.3.7/flash-plan-mcp-darwin-arm64.tar.gz"
  sha256 "486036c56ab167c70dc7f23c87110ba579c9ce2b1d813193fe66ad1a9d1b1045"

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
