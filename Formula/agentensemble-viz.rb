# typed: false
# frozen_string_literal: true

class AgentensembleViz < Formula
  desc "Trace viewer for AgentEnsemble execution graphs and timelines"
  homepage "https://github.com/AgentEnsemble/agentensemble"
  version "2.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.10.0/agentensemble-viz-darwin-arm64.tar.gz"
      sha256 "0f57dc5c9f9946f24963dae4e75a047834d06d39e79279f3d6cf5616bbb6597f" # DARWIN_ARM64_SHA256
    end

    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.10.0/agentensemble-viz-darwin-x64.tar.gz"
      sha256 "7caaa4644e37a415df118d68d8447927a887d171e6b338eea22e124a9ea00f70" # DARWIN_X64_SHA256
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.10.0/agentensemble-viz-linux-x64.tar.gz"
      sha256 "b39054463b9eb7cb48833f70ea435f17c2004275170a5cd21a495362486c61e0" # LINUX_X64_SHA256
    end
  end

  def install
    bin.install "agentensemble-viz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentensemble-viz --version")
  end
end
