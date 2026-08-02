class Cx < Formula
  desc "Coralogix CLI — query observability data from the command line"
  homepage "https://github.com/coralogix/cx-cli"
  version "0.1.14"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.14/cx-0.1.14-x86_64-apple-darwin.tar.gz"
      sha256 "76758de108e2af306b4de90a8338cd71c197ec540990f5a0fc5bb961ef991c25"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.14/cx-0.1.14-aarch64-apple-darwin.tar.gz"
      sha256 "fb315887045307ce7684e32bc6bbac345ecd86ae0ba1b4cb3b4ad3291219e620"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.14/cx-0.1.14-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bc87188798d836b62cc3bdf3167aff77a2291d58e7636a43f83a80f01c114976"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.14/cx-0.1.14-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9671c8ffe812509ced6698e886f9e476358c056127e811789084032a0f0b880c"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match "cx", shell_output("#{bin}/cx --help")
  end
end
