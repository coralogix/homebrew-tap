class Cx < Formula
  desc "Coralogix CLI — query observability data from the command line"
  homepage "https://github.com/coralogix/cx-cli"
  version "0.1.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.6/cx-0.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "4f03ef43ecf4c53634362de2f96cf3e4602dbc08785e3e4d0c204ace023c5fab"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.6/cx-0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "33d8ca13f77c96722406b837834e07fe13e996dee4ed4a4078fcd5dce6fd6f88"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.6/cx-0.1.6-x86_64-unknown-linux-musl.tar.gz"
      sha256 "43a647c993f5d1f98d5ad1bdee7135fe5fa863ac3e69bb1018bb68d64d57f1eb"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.6/cx-0.1.6-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4e733bec079e775b552532249242a146547d3f96a5961a0f6f054846f06ce307"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match "cx", shell_output("#{bin}/cx --help")
  end
end
