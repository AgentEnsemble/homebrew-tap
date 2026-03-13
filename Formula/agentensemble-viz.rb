# typed: false
# frozen_string_literal: true

class AgentensembleViz < Formula
  desc "Trace viewer for AgentEnsemble execution graphs and timelines"
  homepage "https://github.com/AgentEnsemble/agentensemble"
  version "2.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.9.0/agentensemble-viz-darwin-arm64.tar.gz"
      sha256 "812bb0a4aadc8d170f5d3b35add6e09f8656a5069ebf2dda70f6cb1ff9cea211" # DARWIN_ARM64_SHA256
    end

    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.9.0/agentensemble-viz-darwin-x64.tar.gz"
      sha256 "e4bacc2697f789eafc1b78baa916d7945ebd3c3af87c8f4d9b60d834f3d0668e" # DARWIN_X64_SHA256
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.9.0/agentensemble-viz-linux-x64.tar.gz"
      sha256 "92bd000d6b79e38af8bdac37b952c5070bde327adfb4bbfbb8cd5476138fa2dd" # LINUX_X64_SHA256
    end
  end

  def install
    bin.install "agentensemble-viz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentensemble-viz --version")
  end
end
