# typed: false
# frozen_string_literal: true

class AgentensembleViz < Formula
  desc "Trace viewer for AgentEnsemble execution graphs and timelines"
  homepage "https://github.com/AgentEnsemble/agentensemble"
  version "3.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v3.6.0/agentensemble-viz-darwin-arm64.tar.gz"
      sha256 "6bfd91e04c7e1d2654148be5646ce534a1c5c9fdb17e829b98fd5120385c2711" # DARWIN_ARM64_SHA256
    end

    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v3.6.0/agentensemble-viz-darwin-x64.tar.gz"
      sha256 "aca82b3ed12bb646a04bbc633df76db136026ff3d2d35327e5d09759400324d4" # DARWIN_X64_SHA256
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v3.6.0/agentensemble-viz-linux-x64.tar.gz"
      sha256 "c5f0f1a87ea2c0cedfb81ac0e6c682422efb910805eff757d2f2da8b465ab255" # LINUX_X64_SHA256
    end
  end

  def install
    bin.install "agentensemble-viz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentensemble-viz --version")
  end
end
