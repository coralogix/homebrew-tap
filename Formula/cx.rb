class Cx < Formula
  desc "Coralogix CLI — query observability data from the command line"
  homepage "https://github.com/coralogix/cx-cli"
  version "0.1.15"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.15/cx-0.1.15-x86_64-apple-darwin.tar.gz"
      sha256 "d3cb9928ea0743b81edc164e44f1a06dfb20de34f14f0db19a5c2ffdcdbb5937"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.15/cx-0.1.15-aarch64-apple-darwin.tar.gz"
      sha256 "6c8a8b84ca8fc948c09a214126f84d98add26e745b1fc86f2511cc4c4a510820"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.15/cx-0.1.15-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8d3b2b82cb757c6e696b84417768ab7218da73affb7e41508dec58e0371a6521"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.15/cx-0.1.15-aarch64-unknown-linux-musl.tar.gz"
      sha256 "388202e96a7afd89aae4b0630e3f11ec0c4982aa29888f9ca747c87f97c5158c"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match "cx", shell_output("#{bin}/cx --help")
  end
end
