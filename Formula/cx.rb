class Cx < Formula
  desc "Coralogix CLI — query observability data from the command line"
  homepage "https://github.com/coralogix/cx-cli"
  version "0.1.28"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.28/cx-0.1.28-x86_64-apple-darwin.tar.gz"
      sha256 "651fa56a2efdaf4be98a8b5963113eb6669b273b42dba1ee09b7d92bed34b645"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.28/cx-0.1.28-aarch64-apple-darwin.tar.gz"
      sha256 "85502395438eefc2fe7f74e4a89d6f87a614c558ddb5bd9508dcd82b4e81e87c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.28/cx-0.1.28-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f1960bdce01171e961362ebc2941ff666ced8cdad32033fab4d65230dcaf7c48"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.28/cx-0.1.28-aarch64-unknown-linux-musl.tar.gz"
      sha256 "37d8df5355dd977cd70477105bd27a100904aeef6adfbfc5a37bf6fd396905d3"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match "cx", shell_output("#{bin}/cx --help")
  end
end
