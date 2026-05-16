# typed: false
# frozen_string_literal: true

class AgentensembleViz < Formula
  desc "Trace viewer for AgentEnsemble execution graphs and timelines"
  homepage "https://github.com/AgentEnsemble/agentensemble"
  version "3.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v3.5.1/agentensemble-viz-darwin-arm64.tar.gz"
      sha256 "bbf4f75266f5c8c206a6bdde9630c6f1ed5be71a8f1757c7571692b2ce056809" # DARWIN_ARM64_SHA256
    end

    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v3.5.1/agentensemble-viz-darwin-x64.tar.gz"
      sha256 "f6b8336a4f73960c9c2d4cb56ff527f0c2506548fb5fc06caf17b2faeda81079" # DARWIN_X64_SHA256
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v3.5.1/agentensemble-viz-linux-x64.tar.gz"
      sha256 "6a780a9f0bb972a19b7ab64e31f6391a7f02b1b3faa34aadafd8fb05166d4a34" # LINUX_X64_SHA256
    end
  end

  def install
    bin.install "agentensemble-viz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentensemble-viz --version")
  end
end
