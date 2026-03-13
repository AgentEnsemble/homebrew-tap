# typed: false
# frozen_string_literal: true

class AgentensembleViz < Formula
  desc "Trace viewer for AgentEnsemble execution graphs and timelines"
  homepage "https://github.com/AgentEnsemble/agentensemble"
  version "2.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.9.2/agentensemble-viz-darwin-arm64.tar.gz"
      sha256 "3b2bdb864bd217d6ac234a764af0a5d1f23be8c9462106796f427353a4b20f84" # DARWIN_ARM64_SHA256
    end

    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.9.2/agentensemble-viz-darwin-x64.tar.gz"
      sha256 "426049a8e6613d97ad5aab754cc70c411b8ba8fdffcbbd3bdeff48a4e6093034" # DARWIN_X64_SHA256
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.9.2/agentensemble-viz-linux-x64.tar.gz"
      sha256 "e347ac4b275675a2f1f09d7adc89598b478d8cfed43aa9ae1ca8fd9efa2e259f" # LINUX_X64_SHA256
    end
  end

  def install
    bin.install "agentensemble-viz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentensemble-viz --version")
  end
end
