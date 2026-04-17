class Valyu < Formula
  desc "The search CLI for knowledge workers"
  homepage "https://github.com/valyuAI/valyu-cli"
  version "1.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.4/valyu-darwin-arm64.tar.gz"
      sha256 "15a4a28af64b3f7f7d68c329f7b9bd70ef51e4adcac000578dae2f96f74a868b"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.4/valyu-darwin-x64.tar.gz"
      sha256 "981cb9cbeb5cf171d7071407291ff85f451379eb90b1cbfb5b68387e63cc22da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.4/valyu-linux-arm64.tar.gz"
      sha256 "161a66680d3880ee6fcbe0be79449c20aa50a1d72627d8733ef06013fcc233af"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.4/valyu-linux-x64.tar.gz"
      sha256 "c0e7a7fba73d09611c3dcbf8fc1eb49daba358ec88b821cc60431cd05e7519bb"
    end
  end

  def install
    bin.install "valyu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/valyu --version")
  end
end
