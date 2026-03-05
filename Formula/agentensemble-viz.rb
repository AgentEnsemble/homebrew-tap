# typed: false
# frozen_string_literal: true

class AgentensembleViz < Formula
  desc "Trace viewer for AgentEnsemble execution graphs and timelines"
  homepage "https://github.com/AgentEnsemble/agentensemble"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v1.5.0/agentensemble-viz-darwin-arm64.tar.gz"
      sha256 "01c89304f60da9c757fe08ca0cf5e335a2d78756815b459d32d72b4610b3fe55" # DARWIN_ARM64_SHA256
    end

    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v1.5.0/agentensemble-viz-darwin-x64.tar.gz"
      sha256 "b8855c63b9ad2ad60fa3e6dc5320b194e0be7d3014cdebaa13e448fc829222f6" # DARWIN_X64_SHA256
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v1.5.0/agentensemble-viz-linux-x64.tar.gz"
      sha256 "fc45c50a08eb39ca04ad0be51d6cacc3bf8a69c58d4c84186bcdc68c070a2dd2" # LINUX_X64_SHA256
    end
  end

  def install
    bin.install "agentensemble-viz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentensemble-viz --version")
  end
end
