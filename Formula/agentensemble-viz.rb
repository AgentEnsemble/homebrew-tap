# typed: false
# frozen_string_literal: true

class AgentensembleViz < Formula
  desc "Trace viewer for AgentEnsemble execution graphs and timelines"
  homepage "https://github.com/AgentEnsemble/agentensemble"
  version "3.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v3.6.1/agentensemble-viz-darwin-arm64.tar.gz"
      sha256 "ea8a3f37037cedb7cb462195c591e7531c17e70f6daa692cb503ec1605c3acf8" # DARWIN_ARM64_SHA256
    end

    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v3.6.1/agentensemble-viz-darwin-x64.tar.gz"
      sha256 "c8d3709784ee5cd276c294c87a8cce6ed204f9dddd1194091b57526fbb57621f" # DARWIN_X64_SHA256
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v3.6.1/agentensemble-viz-linux-x64.tar.gz"
      sha256 "fa0e5684645de11dc4b339347f1c5d6afa6b8af999184b5df87c5aa59fb9d3fb" # LINUX_X64_SHA256
    end
  end

  def install
    bin.install "agentensemble-viz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentensemble-viz --version")
  end
end
