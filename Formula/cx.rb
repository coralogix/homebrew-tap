class Cx < Formula
  desc "Coralogix CLI — query observability data from the command line"
  homepage "https://github.com/coralogix/cx-cli"
  version "0.1.10"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.10/cx-0.1.10-x86_64-apple-darwin.tar.gz"
      sha256 "93aff473ec270e581c5730dbff25185c00719b201fdb7fc25748707a3ae6902b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.10/cx-0.1.10-aarch64-apple-darwin.tar.gz"
      sha256 "d61ecfce08769e357a7dab869e4cebe6e419b3a51f1953a88e4ae076717ca7eb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.10/cx-0.1.10-x86_64-unknown-linux-musl.tar.gz"
      sha256 "635596af91a3a3bb7c41c299c603c2c83ce18f81c735ad602f2e8e040b61e326"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.10/cx-0.1.10-aarch64-unknown-linux-musl.tar.gz"
      sha256 "361a0f1bd1981dc44fe27a916c615b6846795c210e480e4f3a9bfd386afaf378"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match "cx", shell_output("#{bin}/cx --help")
  end
end
