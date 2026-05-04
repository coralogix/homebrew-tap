class Cx < Formula
  desc "Coralogix CLI — query observability data from the command line"
  homepage "https://github.com/coralogix/cx-cli"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.2/cx-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "236f120f932a6b513bfdf994ef5df1b0ea664109db334fb566af676ee925553b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.2/cx-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "201d8c0342f207429f0a560b984ae4197a93626973cf8b10ca880124217d2dab"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.2/cx-0.1.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c7f80152b14c65b47a87de0f9b0236a7a12354dbcb4ec1eedb18eb35216e74ed"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.2/cx-0.1.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c28c373737f920794caad5327ac1c97b91c409b8d342a2e9ba2eed6d0eac4c2b"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match "cx", shell_output("#{bin}/cx --help")
  end
end
