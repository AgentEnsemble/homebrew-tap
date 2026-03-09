# typed: false
# frozen_string_literal: true

class AgentensembleViz < Formula
  desc "Trace viewer for AgentEnsemble execution graphs and timelines"
  homepage "https://github.com/AgentEnsemble/agentensemble"
  version "2.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.3.0/agentensemble-viz-darwin-arm64.tar.gz"
      sha256 "065b9da0c259c9ecc05e597b531e407e695cf36aed803676d35fe788744a2f95" # DARWIN_ARM64_SHA256
    end

    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.3.0/agentensemble-viz-darwin-x64.tar.gz"
      sha256 "d2107c16498415aaf23d3c3f5f51ee66e5c7cbdf0dfa012f0c704788af01390f" # DARWIN_X64_SHA256
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.3.0/agentensemble-viz-linux-x64.tar.gz"
      sha256 "4a1a186095b978e43f5df23dc619f0c4666d3e2727771f41b9796efc41472e5a" # LINUX_X64_SHA256
    end
  end

  def install
    bin.install "agentensemble-viz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentensemble-viz --version")
  end
end
