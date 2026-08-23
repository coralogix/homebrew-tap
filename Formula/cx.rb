class Cx < Formula
  desc "Coralogix CLI — query observability data from the command line"
  homepage "https://github.com/coralogix/cx-cli"
  version "0.1.19"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.19/cx-0.1.19-x86_64-apple-darwin.tar.gz"
      sha256 "b0a12ad8dc69878cbb1c5333c90d887c782e842c9ac954f4c8f5624bec6f3983"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.19/cx-0.1.19-aarch64-apple-darwin.tar.gz"
      sha256 "52a693bb058f236ba26e88f74624bec1d9bc4506c70a985fc3df197ee77edc7e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.19/cx-0.1.19-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1a351bcd35993edd2451adb94c01878a51598fe79aacda388bc84240880b47dc"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.19/cx-0.1.19-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b4e61f178b73c017f0445a84e8edc8181b108ec6562936426984000789758625"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match "cx", shell_output("#{bin}/cx --help")
  end
end
