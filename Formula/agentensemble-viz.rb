# typed: false
# frozen_string_literal: true

class AgentensembleViz < Formula
  desc "Trace viewer for AgentEnsemble execution graphs and timelines"
  homepage "https://github.com/AgentEnsemble/agentensemble"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.0.0/agentensemble-viz-darwin-arm64.tar.gz"
      sha256 "573fa06185377b49df9b906e215e6932be383db5bfdfaeacf946e57155010bb8" # DARWIN_ARM64_SHA256
    end

    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.0.0/agentensemble-viz-darwin-x64.tar.gz"
      sha256 "cc6ae3ef781aa0ce3096181d7d748dcadbf7aba381be0f2220ef82d155427a0e" # DARWIN_X64_SHA256
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.0.0/agentensemble-viz-linux-x64.tar.gz"
      sha256 "4faf065d9392f75ee7d37c1ee0031786e8a9445a6fe36bf814c4d7e04158b834" # LINUX_X64_SHA256
    end
  end

  def install
    bin.install "agentensemble-viz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentensemble-viz --version")
  end
end
