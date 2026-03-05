# typed: false
# frozen_string_literal: true

class AgentensembleViz < Formula
  desc "Trace viewer for AgentEnsemble execution graphs and timelines"
  homepage "https://github.com/AgentEnsemble/agentensemble"
  version "1.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v1.4.1/agentensemble-viz-darwin-arm64.tar.gz"
      sha256 "480da7ccd00864621aec1e3cd0631dbc83792c4180a2a252dfe01d5794217e64" # DARWIN_ARM64_SHA256
    end

    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v1.4.1/agentensemble-viz-darwin-x64.tar.gz"
      sha256 "5d963ca75efd6e4b3a9d749798bebffb5aa72bc4f785590cb9f5eb7efeabd5a7" # DARWIN_X64_SHA256
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v1.4.1/agentensemble-viz-linux-x64.tar.gz"
      sha256 "7234fd27dfc05f9c753429d4b54aa16a73f00bd343bef9562710244a2f97e3eb" # LINUX_X64_SHA256
    end
  end

  def install
    bin.install "agentensemble-viz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentensemble-viz --version")
  end
end
