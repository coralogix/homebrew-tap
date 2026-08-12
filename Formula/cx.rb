class Cx < Formula
  desc "Coralogix CLI — query observability data from the command line"
  homepage "https://github.com/coralogix/cx-cli"
  version "0.1.16"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.16/cx-0.1.16-x86_64-apple-darwin.tar.gz"
      sha256 "7afefe97ee3b9d903cfb3435b9e4d364e7be388a265d73ccaa57e2bf2bcb8ff7"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.16/cx-0.1.16-aarch64-apple-darwin.tar.gz"
      sha256 "483ec29f214ad7bfe994da5b6098e6af76b332729e7910568009bd518f055d2b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.16/cx-0.1.16-x86_64-unknown-linux-musl.tar.gz"
      sha256 "abfd7507e9b915457c5f164d5e0f2c3b3a18cb6044364748a0286000c12a1b06"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.16/cx-0.1.16-aarch64-unknown-linux-musl.tar.gz"
      sha256 "666f47192c41cdd515c4559685e5330c160a3ad9361bf3f9a9eacb6f317ac40e"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match "cx", shell_output("#{bin}/cx --help")
  end
end
