# typed: false
# frozen_string_literal: true

class AgentensembleViz < Formula
  desc "Trace viewer for AgentEnsemble execution graphs and timelines"
  homepage "https://github.com/AgentEnsemble/agentensemble"
  version "3.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v3.1.0/agentensemble-viz-darwin-arm64.tar.gz"
      sha256 "c8831386a1e435183035d99661cc84ba24aa58c1b4e0eb306034e4e3b11730b6" # DARWIN_ARM64_SHA256
    end

    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v3.1.0/agentensemble-viz-darwin-x64.tar.gz"
      sha256 "6be62201439274284b4aff95ee5ae95ae5e765821564e7e8b51c9cd23d33cee5" # DARWIN_X64_SHA256
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v3.1.0/agentensemble-viz-linux-x64.tar.gz"
      sha256 "4e2a4104dcfb72e550353ff7574aeb34703dbef95f4258b5b443c4bd9a3bc0f7" # LINUX_X64_SHA256
    end
  end

  def install
    bin.install "agentensemble-viz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentensemble-viz --version")
  end
end
