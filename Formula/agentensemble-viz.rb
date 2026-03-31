# typed: false
# frozen_string_literal: true

class AgentensembleViz < Formula
  desc "Trace viewer for AgentEnsemble execution graphs and timelines"
  homepage "https://github.com/AgentEnsemble/agentensemble"
  version "3.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v3.2.0/agentensemble-viz-darwin-arm64.tar.gz"
      sha256 "e222f5690ab3c61c901cedbbf42ba8f16801718891223dd5230f58039cbdf501" # DARWIN_ARM64_SHA256
    end

    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v3.2.0/agentensemble-viz-darwin-x64.tar.gz"
      sha256 "1e4e6f4b7df1ea14b6149b5966de9055a949566f80a7190720d58e0a7c1b8bea" # DARWIN_X64_SHA256
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v3.2.0/agentensemble-viz-linux-x64.tar.gz"
      sha256 "d782cce83dc7702b193164e566432c7058795b71779aef03aa64de903c7a8e4d" # LINUX_X64_SHA256
    end
  end

  def install
    bin.install "agentensemble-viz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentensemble-viz --version")
  end
end
