# typed: false
# frozen_string_literal: true

class AgentensembleViz < Formula
  desc "Trace viewer for AgentEnsemble execution graphs and timelines"
  homepage "https://github.com/AgentEnsemble/agentensemble"
  version "2.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.9.1/agentensemble-viz-darwin-arm64.tar.gz"
      sha256 "09b49a34aa30634e4538c58124f94a283d43a3e338a9c8f97a90bb9be23883bd" # DARWIN_ARM64_SHA256
    end

    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.9.1/agentensemble-viz-darwin-x64.tar.gz"
      sha256 "1443a7e854d08df93d19e1fbf125975dbe4605f28a1e47ac0500121128877363" # DARWIN_X64_SHA256
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.9.1/agentensemble-viz-linux-x64.tar.gz"
      sha256 "c0fc4aff415642e975cc833998fd78f8701b4b4fd5f02fb0ac8960da6aa50d75" # LINUX_X64_SHA256
    end
  end

  def install
    bin.install "agentensemble-viz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentensemble-viz --version")
  end
end
