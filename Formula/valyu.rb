class Valyu < Formula
  desc "The search CLI for knowledge workers"
  homepage "https://github.com/valyuAI/valyu-cli"
  version "1.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.3/valyu-darwin-arm64.tar.gz"
      sha256 "28979d5b2c153dc9e81a3e41e4045b0b40d84976d44f556a2af67a0ed2036aeb"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.3/valyu-darwin-x64.tar.gz"
      sha256 "44e05700abd8e799ee12e667f11bff222bd9b39161429127b21238306a1c0550"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.3/valyu-linux-arm64.tar.gz"
      sha256 "fafa063c5c9ea6e1b9232898e4db79c557230005011a32c511388077c807fce1"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.3/valyu-linux-x64.tar.gz"
      sha256 "b25b09428118b2d59c96b2d50f98ae32c105b9eac0df91048969d365cced517f"
    end
  end

  def install
    bin.install "valyu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/valyu --version")
  end
end
