# typed: false
# frozen_string_literal: true

class AgentensembleViz < Formula
  desc "Trace viewer for AgentEnsemble execution graphs and timelines"
  homepage "https://github.com/AgentEnsemble/agentensemble"
  version "2.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.7.0/agentensemble-viz-darwin-arm64.tar.gz"
      sha256 "a027ae9167be702d8709b4b301ff6bdd69c06a865b05c6109c7b9cde7cd73018" # DARWIN_ARM64_SHA256
    end

    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.7.0/agentensemble-viz-darwin-x64.tar.gz"
      sha256 "ce2f3818af8dfb0aeedc436bf6007ef3800513a821150ab0fa1cbe1693a10019" # DARWIN_X64_SHA256
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.7.0/agentensemble-viz-linux-x64.tar.gz"
      sha256 "8ffaf4fd66975cacfa1d1b75469b62c1665c396a2d46c1f5b701eae4402f0ef1" # LINUX_X64_SHA256
    end
  end

  def install
    bin.install "agentensemble-viz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentensemble-viz --version")
  end
end
