# typed: false
# frozen_string_literal: true

class AgentensembleViz < Formula
  desc "Trace viewer for AgentEnsemble execution graphs and timelines"
  homepage "https://github.com/AgentEnsemble/agentensemble"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v1.4.0/agentensemble-viz-darwin-arm64.tar.gz"
      sha256 "87860dbcb50660c5956529efeb8840acefcbc003ffdf59f3a527367f91223b34" # DARWIN_ARM64_SHA256
    end

    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v1.4.0/agentensemble-viz-darwin-x64.tar.gz"
      sha256 "444bbdf1c6cc54c88e99adece890a24c3b638dc7bec377eb98b506a0686194b5" # DARWIN_X64_SHA256
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v1.4.0/agentensemble-viz-linux-x64.tar.gz"
      sha256 "d5af1d9a1fb7c4ffe27faca80b12ebfaf608f0c429a26ac177ce96410285ffc0" # LINUX_X64_SHA256
    end
  end

  def install
    bin.install "agentensemble-viz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentensemble-viz --version")
  end
end
