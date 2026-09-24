class Cx < Formula
  desc "Coralogix CLI — query observability data from the command line"
  homepage "https://github.com/coralogix/cx-cli"
  version "0.1.25"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.25/cx-0.1.25-x86_64-apple-darwin.tar.gz"
      sha256 "e323ccd417e0c926679389ef8507deb7ee2064de34d82b5e076699e4a6377892"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.25/cx-0.1.25-aarch64-apple-darwin.tar.gz"
      sha256 "f6d71e9d9b153168940f68c3429430118deffab02c50ea5868a024b1802ef124"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.25/cx-0.1.25-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5d26ed885736565cb6a70842814a6f7b42cd6eec4615322acd80630829c6e4f4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.25/cx-0.1.25-aarch64-unknown-linux-musl.tar.gz"
      sha256 "59c511a06cca850c87de0df88e834bdf98371037e791a95184e48b9c6fccefea"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match "cx", shell_output("#{bin}/cx --help")
  end
end
