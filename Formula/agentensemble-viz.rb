# typed: false
# frozen_string_literal: true

class AgentensembleViz < Formula
  desc "Trace viewer for AgentEnsemble execution graphs and timelines"
  homepage "https://github.com/AgentEnsemble/agentensemble"
  version "3.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v3.6.2/agentensemble-viz-darwin-arm64.tar.gz"
      sha256 "006142ff80c566fc03ecd35fb0f876ac5a5645ac4bf6d452c42c0647ce5bebf1" # DARWIN_ARM64_SHA256
    end

    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v3.6.2/agentensemble-viz-darwin-x64.tar.gz"
      sha256 "fea55c52351c20bd7c2f34b222a575b22ae9150cc9855c8196be8609513c5621" # DARWIN_X64_SHA256
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v3.6.2/agentensemble-viz-linux-x64.tar.gz"
      sha256 "eaa1865cbd325c268977aa57758accef518f608b583816d2f1a5e8f583467d68" # LINUX_X64_SHA256
    end
  end

  def install
    bin.install "agentensemble-viz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentensemble-viz --version")
  end
end
