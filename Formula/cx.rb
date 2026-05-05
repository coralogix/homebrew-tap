class Cx < Formula
  desc "Coralogix CLI — query observability data from the command line"
  homepage "https://github.com/coralogix/cx-cli"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.4/cx-0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "305954f924e49e031d31ae462c82252ca939799d7da64de5a367795192118438"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.4/cx-0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "6c82ea9225ff1ea1835d5fa1ff494c11904f2a01a880a8879ef95ab02b1614c0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.4/cx-0.1.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cc096a8f618c5fe81435c6c5fdf29e338fcbd0ae433556f247ce15cc91310989"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.4/cx-0.1.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c0be7d49b3a11baf823b6ad96025f6a3b4cf4df3ba8e661c6cbca0bcac39d4ce"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match "cx", shell_output("#{bin}/cx --help")
  end
end
