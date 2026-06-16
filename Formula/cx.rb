class Cx < Formula
  desc "Coralogix CLI — query observability data from the command line"
  homepage "https://github.com/coralogix/cx-cli"
  version "0.1.9"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.9/cx-0.1.9-x86_64-apple-darwin.tar.gz"
      sha256 "a5cfa62eeb856164a5186fef5a0632879d6120c083b9c28454bbd99d51dc2c5d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.9/cx-0.1.9-aarch64-apple-darwin.tar.gz"
      sha256 "cbbd0dcfbc2830d38daec79a6be41453457a9e1b1b9e28d5b769ae8ede59cd01"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.9/cx-0.1.9-x86_64-unknown-linux-musl.tar.gz"
      sha256 "92e91fefa0eab3dddf604e8dbcf8626b80c07111fbd5f09fce9a4cef207bf2b8"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.9/cx-0.1.9-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aa6f9bb95d365ca3ece531f572816431de75bff06d80ee4f8629e0d74aa1d98d"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match "cx", shell_output("#{bin}/cx --help")
  end
end
