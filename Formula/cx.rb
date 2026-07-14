class Cx < Formula
  desc "Coralogix CLI — query observability data from the command line"
  homepage "https://github.com/coralogix/cx-cli"
  version "0.1.13"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.13/cx-0.1.13-x86_64-apple-darwin.tar.gz"
      sha256 "4b2604bf75c0db38426de14e8c7052cb71991ca145061f8ac20bac645299c3e1"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.13/cx-0.1.13-aarch64-apple-darwin.tar.gz"
      sha256 "8d5712b2aa16f3fe9b65e38ff0f68cc9b06cd9c53a416323263b094cb1f581f7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.13/cx-0.1.13-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1e7ca2bf90c0d266f230b7b9c93448426f142dc3e1f6daa9e9e6cfeeb60a0f02"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.13/cx-0.1.13-aarch64-unknown-linux-musl.tar.gz"
      sha256 "be73c7e47b6ec00523c7c127356f892c939b4525aef742e74dd46e204750412d"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match "cx", shell_output("#{bin}/cx --help")
  end
end
