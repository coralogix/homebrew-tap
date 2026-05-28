class Cx < Formula
  desc "Coralogix CLI — query observability data from the command line"
  homepage "https://github.com/coralogix/cx-cli"
  version "0.1.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.5/cx-0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "f9195408c2e8d70ab12d28f3802599929c2d8e243ac3d0c5149b02482040da83"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.5/cx-0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "34b22b28e295e1a7c0c6364955ef0679c0dbac2c0b2a3fa2304a2bb9cd4e07de"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.5/cx-0.1.5-x86_64-unknown-linux-musl.tar.gz"
      sha256 "240c884e4e4a74c07ca98608cd492fa2ced95b9b1c86bd15d26cea4909286583"
    end
    if Hardware::CPU.arm?
      url "https://github.com/coralogix/cx-cli/releases/download/v0.1.5/cx-0.1.5-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b695d5b97e34997ff4d38afcfc2e1cda9f507b953a971aa08e0ac672ffe17ac7"
    end
  end

  def install
    bin.install "cx"
  end

  def post_install
    cx_dir = Pathname.new(Dir.home) / ".cx"
    cx_dir.mkpath
    (cx_dir / "install-method").write("brew")
  end

  test do
    assert_match "cx", shell_output("#{bin}/cx --help")
  end
end
