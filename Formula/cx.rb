class Cx < Formula
  desc "Coralogix CLI — query observability data from the command line"
  homepage "https://github.com/coralogix/cx-cli"
  version "0.1.26"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.26/cx-0.1.26-x86_64-apple-darwin.tar.gz"
      sha256 "2dd3e5eeeceb4fd993c18f98827bb775e0704422501ddc42475d20992bd4f3ce"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.26/cx-0.1.26-aarch64-apple-darwin.tar.gz"
      sha256 "0b6aaee6bf2872e368fbce3d0a8976c089e6a48867acf9192e32738918295644"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.26/cx-0.1.26-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bd7dea0a86cc4d56650731060936d97ad9ec66d0bc9764aa88948d414a2e620b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.26/cx-0.1.26-aarch64-unknown-linux-musl.tar.gz"
      sha256 "545d8efd219237c1d30f944322e9e154b09263b9683f1796c5d9ff138a86e3af"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match "cx", shell_output("#{bin}/cx --help")
  end
end
