# typed: false
# frozen_string_literal: true

class AgentensembleViz < Formula
  desc "Trace viewer for AgentEnsemble execution graphs and timelines"
  homepage "https://github.com/AgentEnsemble/agentensemble"
  version "2.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.4.0/agentensemble-viz-darwin-arm64.tar.gz"
      sha256 "3e600110cb7c726613c51abbc2495721f8904ff4b7cc739889f0e86746588ab5" # DARWIN_ARM64_SHA256
    end

    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.4.0/agentensemble-viz-darwin-x64.tar.gz"
      sha256 "8a799da9e1dc763bf81eca1d2677f0eae0ccdc492d813e1afe1152c27b7a2436" # DARWIN_X64_SHA256
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.4.0/agentensemble-viz-linux-x64.tar.gz"
      sha256 "b5b98463d0644793dd022204b5fb0728bc18f66c6fa66cac743d96c17fbae410" # LINUX_X64_SHA256
    end
  end

  def install
    bin.install "agentensemble-viz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentensemble-viz --version")
  end
end
