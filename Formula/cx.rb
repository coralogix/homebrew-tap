class Cx < Formula
  desc "Coralogix CLI — query observability data from the command line"
  homepage "https://github.com/coralogix/cx-cli"
  version "0.1.12"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.12/cx-0.1.12-x86_64-apple-darwin.tar.gz"
      sha256 "af422c777432941921db84fdb418bdaec1e4594252714a5170af8c7aa81a63cb"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.12/cx-0.1.12-aarch64-apple-darwin.tar.gz"
      sha256 "b5a613d5f167e58a9af4461c8366bf37f226df23b4fe7d2a69260e68712f5546"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.12/cx-0.1.12-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0c0512289b7c397bbafcc7811291894b133e31f9ab967f16ea32ec5e118fa324"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.12/cx-0.1.12-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1a269427c51844b98c2e9c65b35b4e2b3f58e3c712d6bea24effb1bfec2fc8e3"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match "cx", shell_output("#{bin}/cx --help")
  end
end
