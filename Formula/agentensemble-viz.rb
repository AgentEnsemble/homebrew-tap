# typed: false
# frozen_string_literal: true

class AgentensembleViz < Formula
  desc "Trace viewer for AgentEnsemble execution graphs and timelines"
  homepage "https://github.com/AgentEnsemble/agentensemble"
  version "2.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.5.0/agentensemble-viz-darwin-arm64.tar.gz"
      sha256 "f20d178637f4d15fa0ddb7b1e46bda774041108b46147527106bbbc319071d03" # DARWIN_ARM64_SHA256
    end

    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.5.0/agentensemble-viz-darwin-x64.tar.gz"
      sha256 "50c5434f9b982288b62c25954bdeff6b6407de382da51199dde7fc9d44f65fbb" # DARWIN_X64_SHA256
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.5.0/agentensemble-viz-linux-x64.tar.gz"
      sha256 "fc95effa28897f2e4802c95621e0d43edb718091bc3383fa301624538635d93e" # LINUX_X64_SHA256
    end
  end

  def install
    bin.install "agentensemble-viz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentensemble-viz --version")
  end
end
