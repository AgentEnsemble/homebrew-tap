# typed: false
# frozen_string_literal: true

class AgentensembleViz < Formula
  desc "Trace viewer for AgentEnsemble execution graphs and timelines"
  homepage "https://github.com/AgentEnsemble/agentensemble"
  version "2.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.6.1/agentensemble-viz-darwin-arm64.tar.gz"
      sha256 "9f29e66cf42617bbc9f1e1a400136d94a248cc7514e761c0dcb12673a8a865a1" # DARWIN_ARM64_SHA256
    end

    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.6.1/agentensemble-viz-darwin-x64.tar.gz"
      sha256 "4628b0966e7289117c1f905bde7c7d7f230c7330cd6659c17150bc47aae2f0ba" # DARWIN_X64_SHA256
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.6.1/agentensemble-viz-linux-x64.tar.gz"
      sha256 "75af9ab657d90f5ee8a2f4614221248a390991860e71a4bca7d7939efb28e484" # LINUX_X64_SHA256
    end
  end

  def install
    bin.install "agentensemble-viz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentensemble-viz --version")
  end
end
