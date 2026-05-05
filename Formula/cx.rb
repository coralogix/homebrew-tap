class Cx < Formula
  desc "Coralogix CLI — query observability data from the command line"
  homepage "https://github.com/coralogix/cx-cli"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.3/cx-0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "362c6f53effc2202bbe9259a6616d32676ec0c70abe3bf2f53e0fcb77696b45b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.3/cx-0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "6de0678507f2d33f12fab241c22baa922ae21eefeababc26039697dfb75ed266"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.3/cx-0.1.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "823e4d8641cc2bc9930af6aac7a9cc094aebb2e725dff9538c3b00253719ea24"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.3/cx-0.1.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "35c14a21287f5c216efd49a395c6de5ad5aad015306cc8a8c55a21dc198fd070"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match "cx", shell_output("#{bin}/cx --help")
  end
end
