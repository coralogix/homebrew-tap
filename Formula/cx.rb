class Cx < Formula
  desc "Coralogix CLI — query observability data from the command line"
  homepage "https://github.com/coralogix/cx-cli"
  version "0.1.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.8/cx-0.1.8-x86_64-apple-darwin.tar.gz"
      sha256 "fad9c2a917f3690a404bcad9138bb6ebd5d10f9e51c61555774ee5a42747bf97"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.8/cx-0.1.8-aarch64-apple-darwin.tar.gz"
      sha256 "79c9ec1bc2291395eff30ef7db78693d35dad0a121a22c1c556d8d9732877d8e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.8/cx-0.1.8-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a1d77bd783788d291a26ba4a616e3f2d503216f39eecafcdbb3f8da9fc3d152e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.8/cx-0.1.8-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a74da933625340b3073c435e143bbb36a428d2fb9f7331edd19a2919ea1a7952"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match "cx", shell_output("#{bin}/cx --help")
  end
end
