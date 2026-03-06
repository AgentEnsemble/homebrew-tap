# typed: false
# frozen_string_literal: true

class AgentensembleViz < Formula
  desc "Trace viewer for AgentEnsemble execution graphs and timelines"
  homepage "https://github.com/AgentEnsemble/agentensemble"
  version "2.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.1.0/agentensemble-viz-darwin-arm64.tar.gz"
      sha256 "5830f24a3d2b43efd5a56f8e3866483af7a74b111a7f0904e3e0fa62f499f81b" # DARWIN_ARM64_SHA256
    end

    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.1.0/agentensemble-viz-darwin-x64.tar.gz"
      sha256 "df78850bd6186cf9097a1e6b938a9a603528536aed852b63624a3df7a8f1572a" # DARWIN_X64_SHA256
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentEnsemble/agentensemble/releases/download/v2.1.0/agentensemble-viz-linux-x64.tar.gz"
      sha256 "d2e0158a7bd9fd105f89cc4ea54bc1506f6ab0740963553f4c680c18e9309f97" # LINUX_X64_SHA256
    end
  end

  def install
    bin.install "agentensemble-viz"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentensemble-viz --version")
  end
end
