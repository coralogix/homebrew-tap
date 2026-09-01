class Cx < Formula
  desc "Coralogix CLI — query observability data from the command line"
  homepage "https://github.com/coralogix/cx-cli"
  version "0.1.24"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.24/cx-0.1.24-x86_64-apple-darwin.tar.gz"
      sha256 "846183a7c6f207d96231c4ed88e6a1992918ddf92b8fbca361c20124f983c314"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.24/cx-0.1.24-aarch64-apple-darwin.tar.gz"
      sha256 "09ffd149d86fae29e43ec0858b55eebc7471e4c885a828e045f485a480daa679"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.24/cx-0.1.24-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a5f8484e00874041c1babe5d60f82a7e05d82c6d629b697bd1cf2a692dbfc783"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.24/cx-0.1.24-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2e131b0fd152926a2be63c6d1a8960f01217182e3066ed03c9c22ffad3b6793d"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match "cx", shell_output("#{bin}/cx --help")
  end
end
