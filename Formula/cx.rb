class Cx < Formula
  desc "Coralogix CLI — query observability data from the command line"
  homepage "https://github.com/coralogix/cx-cli"
  version "0.1.11"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.11/cx-0.1.11-x86_64-apple-darwin.tar.gz"
      sha256 "9468203d65beec1d115d6a6ecf54d574a7eeb7d46e7dd8b0c3d1200709ef6457"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.11/cx-0.1.11-aarch64-apple-darwin.tar.gz"
      sha256 "ef467ef416de45da160212cc1a7619eb2828ae353677b43c283bcf5356be51a3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.11/cx-0.1.11-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ec9794aa2f1b5e7bad7d1449a4543d971ba200b77de34266a19053059a8e61bd"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.11/cx-0.1.11-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3277ee047690f65c62b4f8c1fa1c2a55f7137f4b4d050b45d1b67ace2ded4e11"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match "cx", shell_output("#{bin}/cx --help")
  end
end
