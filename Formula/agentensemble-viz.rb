# typed: false
# frozen_string_literal: true

class AgentensembleViz < Formula
  desc "Trace viewer for AgentEnsemble execution graphs and timelines"
  homepage "https://github.com/AgentEnsemble/agentensemble"
  version "3.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v3.3.0/agentensemble-viz-darwin-arm64.tar.gz"
      sha256 "4141f82d2a1818c338ef5aca71f947d9cc323663bd9472045dc7f5dfbf0306ca" # DARWIN_ARM64_SHA256
    end

    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v3.3.0/agentensemble-viz-darwin-x64.tar.gz"
      sha256 "c30707c4f412bc38d4cb367c73b49dd670d22e44df7286be9622b6c112a9fda6" # DARWIN_X64_SHA256
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v3.3.0/agentensemble-viz-linux-x64.tar.gz"
      sha256 "63143048341dd35ad7683be1cc97024840edd33027630fd7741537b5a6887e60" # LINUX_X64_SHA256
    end
  end

  def install
    bin.install "agentensemble-viz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentensemble-viz --version")
  end
end
