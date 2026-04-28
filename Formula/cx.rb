class Cx < Formula
  desc "Coralogix CLI — query observability data from the command line"
  homepage "https://github.com/coralogix/cx-cli"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.1/cx-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "9a448383b3274b76ed15d86c2e2401c6b53d80d7ac246df2a4406ea83e41f7a9"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.1/cx-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "c21a1800b2c27177248528f8d9c9a80aaa2842922156d8a42c039e2c304854b0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.1/cx-0.1.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "60e4c9259fff0e9f61af245dc96593ce1c8b0ec567d5e431ca16846b6c63e86c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.1/cx-0.1.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "93ab4749b874f8c14ccf1d40d7248190809ea1b84d096b62d9b3180b243765b7"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match "cx", shell_output("#{bin}/cx --help")
  end
end
