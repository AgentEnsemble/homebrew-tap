# typed: false
# frozen_string_literal: true

class AgentensembleViz < Formula
  desc "Trace viewer for AgentEnsemble execution graphs and timelines"
  homepage "https://github.com/AgentEnsemble/agentensemble"
  version "3.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v3.4.0/agentensemble-viz-darwin-arm64.tar.gz"
      sha256 "947c1e9d6c5cf403bf2d599a43b3567a59be8d5f1324c8802746b84649912460" # DARWIN_ARM64_SHA256
    end

    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v3.4.0/agentensemble-viz-darwin-x64.tar.gz"
      sha256 "6fdac52a6c302c76a4db50232ea00a8422f47df8ba4e1f6b1b6069ee1a9db0ca" # DARWIN_X64_SHA256
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v3.4.0/agentensemble-viz-linux-x64.tar.gz"
      sha256 "2bfe8aa9389ea1d9f2899682e9f7387c8c913a7e87e7cc68fee1ac3f57b438dd" # LINUX_X64_SHA256
    end
  end

  def install
    bin.install "agentensemble-viz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentensemble-viz --version")
  end
end
