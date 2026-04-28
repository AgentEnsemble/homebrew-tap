# typed: false
# frozen_string_literal: true

class AgentensembleViz < Formula
  desc "Trace viewer for AgentEnsemble execution graphs and timelines"
  homepage "https://github.com/AgentEnsemble/agentensemble"
  version "3.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v3.5.0/agentensemble-viz-darwin-arm64.tar.gz"
      sha256 "2ff478e9447e9fe37cf4eea047588578804c0b3f129ab65d3903fb5a42dbb2a0" # DARWIN_ARM64_SHA256
    end

    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v3.5.0/agentensemble-viz-darwin-x64.tar.gz"
      sha256 "fb079643a28e3ea853897489ef5a8b3d905eaacc7d1509015b77cb9802ba1454" # DARWIN_X64_SHA256
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v3.5.0/agentensemble-viz-linux-x64.tar.gz"
      sha256 "3ac44a854c8ce203be03eaaa4895d5160d49009d8279fae540113051a9667180" # LINUX_X64_SHA256
    end
  end

  def install
    bin.install "agentensemble-viz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentensemble-viz --version")
  end
end
