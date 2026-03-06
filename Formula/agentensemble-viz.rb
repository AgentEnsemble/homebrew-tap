# typed: false
# frozen_string_literal: true

class AgentensembleViz < Formula
  desc "Trace viewer for AgentEnsemble execution graphs and timelines"
  homepage "https://github.com/AgentEnsemble/agentensemble"
  version "2.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.2.1/agentensemble-viz-darwin-arm64.tar.gz"
      sha256 "c28cc71aa7e7506e39b9d4b20108836bc58104b41196063c299bdf717b7bee04" # DARWIN_ARM64_SHA256
    end

    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.2.1/agentensemble-viz-darwin-x64.tar.gz"
      sha256 "b2c20c46f0d8e0e2109943b40a4e4af9e1c00504ba8ed129e5cc4b7028ae6b33" # DARWIN_X64_SHA256
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.2.1/agentensemble-viz-linux-x64.tar.gz"
      sha256 "f79b0b6821477cad9670e6ba6a8f531c4843a8d4f75917992ac43066fb955e7b" # LINUX_X64_SHA256
    end
  end

  def install
    bin.install "agentensemble-viz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentensemble-viz --version")
  end
end
