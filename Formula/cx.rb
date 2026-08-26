class Cx < Formula
  desc "Coralogix CLI — query observability data from the command line"
  homepage "https://github.com/coralogix/cx-cli"
  version "0.1.21"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.21/cx-0.1.21-x86_64-apple-darwin.tar.gz"
      sha256 "9643605b497f794470fa8843dbe0ed4458f3bc4771c539cd4ae2c08178a1a78d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.21/cx-0.1.21-aarch64-apple-darwin.tar.gz"
      sha256 "6f052b19cffd295ec6bbe7b6d3a78087f5984bc39c8feb99dbf71bdd39865d1a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.21/cx-0.1.21-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bdbd9dfcc009bfe342d1e8221705b4cc763d8162b9b937914ebfa5a81751f711"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.21/cx-0.1.21-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7aeacdb829152f94c2bdd75775e7dcc571e6607aa8ef3d5c5cb7a53007ac6f9b"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match "cx", shell_output("#{bin}/cx --help")
  end
end
