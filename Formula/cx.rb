class Cx < Formula
  desc "Coralogix CLI — query observability data from the command line"
  homepage "https://github.com/coralogix/cx-cli"
  version "0.1.23"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.23/cx-0.1.23-x86_64-apple-darwin.tar.gz"
      sha256 "db2125f92d2fa4156d2474289b2ba3546ded51fa86dce0d0918f49c7d1d021d8"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.23/cx-0.1.23-aarch64-apple-darwin.tar.gz"
      sha256 "4d2370bbeb6b0baa004e7038226999fe37f0577a765bce7f1dd655ca58739f92"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.23/cx-0.1.23-x86_64-unknown-linux-musl.tar.gz"
      sha256 "41d1cbca9609ec214f4bd9a1d96df11da986e7de741b3901b746a1b76e52de8e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.23/cx-0.1.23-aarch64-unknown-linux-musl.tar.gz"
      sha256 "62e7ab077555da6582855327ef64649566bf56202fb3e69fb65a2273b9cf0fb1"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match "cx", shell_output("#{bin}/cx --help")
  end
end
