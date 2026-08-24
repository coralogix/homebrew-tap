class Cx < Formula
  desc "Coralogix CLI — query observability data from the command line"
  homepage "https://github.com/coralogix/cx-cli"
  version "0.1.20"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.20/cx-0.1.20-x86_64-apple-darwin.tar.gz"
      sha256 "6210fe6ed6c5b356eaafe4201cb182d6e96b91361f2cd5da96773d00784ab8bf"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.20/cx-0.1.20-aarch64-apple-darwin.tar.gz"
      sha256 "54f9ea6ebe92570b5dbea62285e3e9f4aed25878a32b192061581f5ebb94bf8c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.20/cx-0.1.20-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4de3ee5ab2eb05010393a3203e8cc60cc54f97962587542a4046a3744d35472c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.20/cx-0.1.20-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9c64da6dd814cfe4c0d35b06414916a1f3c6a59ef41f080852561d6bd76a6d2a"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match "cx", shell_output("#{bin}/cx --help")
  end
end
