# typed: false
# frozen_string_literal: true

class AgentensembleViz < Formula
  desc "Trace viewer for AgentEnsemble execution graphs and timelines"
  homepage "https://github.com/AgentEnsemble/agentensemble"
  version "2.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.6.0/agentensemble-viz-darwin-arm64.tar.gz"
      sha256 "48fd0730c0a8c0c0c898268cda762b95ea967dc30bacfd595e38a6147d6d6cce" # DARWIN_ARM64_SHA256
    end

    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.6.0/agentensemble-viz-darwin-x64.tar.gz"
      sha256 "1cfac8d4b650864084ca1949cda62ab69ebcddae85120f6db1f6b1656458a7f4" # DARWIN_X64_SHA256
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.6.0/agentensemble-viz-linux-x64.tar.gz"
      sha256 "635557786c677c874010893b22c995769d694357c1b9692c2b4da0ff7ecbc2ba" # LINUX_X64_SHA256
    end
  end

  def install
    bin.install "agentensemble-viz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentensemble-viz --version")
  end
end
