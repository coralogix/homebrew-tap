class Cx < Formula
  desc "Coralogix CLI — query observability data from the command line"
  homepage "https://github.com/coralogix/cx-cli"
  version "0.1.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.7/cx-0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "15bda60fe889533330300cd13b5ff027d65383633eb7835a5f0911a20ca41c28"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.7/cx-0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "f9928e4ce76d2513862760674faff4788478efe0b4b39bd580f81e105109c4fa"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.7/cx-0.1.7-x86_64-unknown-linux-musl.tar.gz"
      sha256 "48fefc263ddbc16d62c1daad768dff5dc2fdeb17dada4260fc646711f168097b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.7/cx-0.1.7-aarch64-unknown-linux-musl.tar.gz"
      sha256 "24f4f594c19e9c64414048ec44da85afa234cb6557df0af819ad485798168126"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match "cx", shell_output("#{bin}/cx --help")
  end
end
