# typed: false
# frozen_string_literal: true

class AgentensembleViz < Formula
  desc "Trace viewer for AgentEnsemble execution graphs and timelines"
  homepage "https://github.com/AgentEnsemble/agentensemble"
  version "2.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.8.0/agentensemble-viz-darwin-arm64.tar.gz"
      sha256 "368399bb382a76c804fa1ff52aa6538c771076f59763cbb11ffcb94ea4079f6e" # DARWIN_ARM64_SHA256
    end

    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.8.0/agentensemble-viz-darwin-x64.tar.gz"
      sha256 "bafcaad9b2bc05b969057b2b171c6c401c3004a489a37254cadd2c3ebe7cfc4c" # DARWIN_X64_SHA256
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.8.0/agentensemble-viz-linux-x64.tar.gz"
      sha256 "7e4d463c4611e62b724db6107efb88ed636ebf806a1cd67ed84859f01fe85d47" # LINUX_X64_SHA256
    end
  end

  def install
    bin.install "agentensemble-viz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentensemble-viz --version")
  end
end
