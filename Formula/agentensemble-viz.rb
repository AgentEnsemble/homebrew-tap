# typed: false
# frozen_string_literal: true

class AgentensembleViz < Formula
  desc "Trace viewer for AgentEnsemble execution graphs and timelines"
  homepage "https://github.com/AgentEnsemble/agentensemble"
  version "3.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v3.0.0/agentensemble-viz-darwin-arm64.tar.gz"
      sha256 "79a96613e4b78c69168eeee1abf822495ae378ffadf4bc9a6201315ffcf8538f" # DARWIN_ARM64_SHA256
    end

    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v3.0.0/agentensemble-viz-darwin-x64.tar.gz"
      sha256 "1b2beefd38da1daadcf1372c21343e6bb424f57d3f29f02b3b0aa73a49b25042" # DARWIN_X64_SHA256
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v3.0.0/agentensemble-viz-linux-x64.tar.gz"
      sha256 "fed3c401e493e6e14975229a6b99b957a2430b6568a70fe3adef45843b3261ca" # LINUX_X64_SHA256
    end
  end

  def install
    bin.install "agentensemble-viz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentensemble-viz --version")
  end
end
