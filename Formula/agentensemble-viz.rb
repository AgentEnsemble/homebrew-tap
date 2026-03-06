# typed: false
# frozen_string_literal: true

class AgentensembleViz < Formula
  desc "Trace viewer for AgentEnsemble execution graphs and timelines"
  homepage "https://github.com/AgentEnsemble/agentensemble"
  version "2.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.2.0/agentensemble-viz-darwin-arm64.tar.gz"
      sha256 "2c9c511e94e184c833da6adf0810196ae8ff35b6acf20cbf4e96220045e7dd80" # DARWIN_ARM64_SHA256
    end

    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.2.0/agentensemble-viz-darwin-x64.tar.gz"
      sha256 "82019b01b54a91e1cb390fb8769792a1d97ccd4cfa5f6e99ed8da15c8054c341" # DARWIN_X64_SHA256
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.2.0/agentensemble-viz-linux-x64.tar.gz"
      sha256 "e5245d0b29e25da8cb7c499f3d62e81862be1af638afadfaeab3e901cf2dd6cf" # LINUX_X64_SHA256
    end
  end

  def install
    bin.install "agentensemble-viz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentensemble-viz --version")
  end
end
