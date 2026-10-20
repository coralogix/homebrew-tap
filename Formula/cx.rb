class Cx < Formula
  desc "Coralogix CLI — query observability data from the command line"
  homepage "https://github.com/coralogix/cx-cli"
  version "0.1.27"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.27/cx-0.1.27-x86_64-apple-darwin.tar.gz"
      sha256 "2c184f898808f59c57edc6d633dfe2989ae3d1bc8a8eebcfb41232e99105a9e0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.27/cx-0.1.27-aarch64-apple-darwin.tar.gz"
      sha256 "6d55cadf91e395b627260878bba0cbe3c02f5b5c5c996bba2b9a4d4e29a4dfe3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.27/cx-0.1.27-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e590503e03fe9c629bb0843cec9c9942559e93141e81a15db0f471b51a41e3ec"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.27/cx-0.1.27-aarch64-unknown-linux-musl.tar.gz"
      sha256 "96d2c979ff094a64421eac745f30ec452e2c9448506a06a5d16f976eff59e6a6"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match "cx", shell_output("#{bin}/cx --help")
  end
end
