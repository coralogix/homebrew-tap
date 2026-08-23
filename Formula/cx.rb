class Cx < Formula
  desc "Coralogix CLI — query observability data from the command line"
  homepage "https://github.com/coralogix/cx-cli"
  version "0.1.18"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.18/cx-0.1.18-x86_64-apple-darwin.tar.gz"
      sha256 "40a612f293685809e93ca73997a8a0e99c57c124495a862e2b503d402b14fcdd"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.18/cx-0.1.18-aarch64-apple-darwin.tar.gz"
      sha256 "5defb68d52a5d6a539cab91fea0e37537210c79ce1c76b7c7d7ed15a8e3676e6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.18/cx-0.1.18-x86_64-unknown-linux-musl.tar.gz"
      sha256 "113e7c77709f77c4c29a18d1d0608e2a89a4f621690171cc1f4d90db0ea169cc"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.18/cx-0.1.18-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dd5176c82bc73cec75d6dc58a5d54643e010fb03564bc01bb7260d2547de54ef"
    end
  end

  def install
    bin.install "cx"
  end

  test do
    assert_match "cx", shell_output("#{bin}/cx --help")
  end
end
