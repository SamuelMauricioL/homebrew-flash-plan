class FlashPlanMcp < Formula
  desc "MCP server for FlashPlan - AI agent access to FlashPlan data"
  homepage "https://github.com/SamuelMauricioL/flash-plan-releases"
  version "1.3.2"
  url "https://github.com/SamuelMauricioL/flash-plan-releases/releases/download/v1.3.2/flash-plan-mcp-darwin-arm64.tar.gz"
  sha256 "a2eb8b80bbe7f694fb5aabd50bcdb458b030818f283091b7fe73e827d8bc9fb3"

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
