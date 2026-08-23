class Cx < Formula
  desc "Coralogix CLI — query observability data from the command line"
  homepage "https://github.com/coralogix/cx-cli"
  version "0.1.17"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.17/cx-0.1.17-x86_64-apple-darwin.tar.gz"
      sha256 "deb6f3824066a1fb3e6dd9b3cd800dfbd92fdebc854a923ca32a683ed04d5c2e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.17/cx-0.1.17-aarch64-apple-darwin.tar.gz"
      sha256 "405ab2b99b89b3a32e94cc25beac2365b7a95cd04a96b3f7d6a21bf8861add5a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.17/cx-0.1.17-x86_64-unknown-linux-musl.tar.gz"
      sha256 "90b0391116d72e04971b90af0d7971809e0b73219ed8f333cf81fdcc75186397"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.17/cx-0.1.17-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7e83d6cd274af2f380a782bcdb822eb0f8aa70e1ba32f73f0174227ef49c99f4"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match "cx", shell_output("#{bin}/cx --help")
  end
end
