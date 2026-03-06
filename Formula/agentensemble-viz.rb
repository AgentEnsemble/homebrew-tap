# typed: false
# frozen_string_literal: true

class AgentensembleViz < Formula
  desc "Trace viewer for AgentEnsemble execution graphs and timelines"
  homepage "https://github.com/AgentEnsemble/agentensemble"
  version "2.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.2.2/agentensemble-viz-darwin-arm64.tar.gz"
      sha256 "84c48da11465098f6b4554eddc7a3955358a1b5cc5e73ac3ebbd7bbfd8a92c1d" # DARWIN_ARM64_SHA256
    end

    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.2.2/agentensemble-viz-darwin-x64.tar.gz"
      sha256 "fbc2b672ddb222222618d358c7de1cb65a9aef12788f223a3ae0b4bda2d0196e" # DARWIN_X64_SHA256
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.2.2/agentensemble-viz-linux-x64.tar.gz"
      sha256 "9092bb09deb09205b9d00d137f63e0d0699dce27696d26f381b31faf90dda735" # LINUX_X64_SHA256
    end
  end

  def install
    bin.install "agentensemble-viz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentensemble-viz --version")
  end
end
