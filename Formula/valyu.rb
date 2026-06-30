class Valyu < Formula
  desc "The search CLI for knowledge workers"
  homepage "https://github.com/valyuAI/valyu-cli"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.2.0/valyu-darwin-arm64.tar.gz"
      sha256 "3992af2d3d937c6085b0b41a5b4c5a478ccf629c184ffe4ce256eac9de3da383"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.2.0/valyu-darwin-x64.tar.gz"
      sha256 "194ddda6bfa10fefe8d524e709a69fdf2521f988b050700993b702297adf109b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.2.0/valyu-linux-arm64.tar.gz"
      sha256 "2483b4e7bf1a2ea94ed16d86a9f1c776f7a3111103e5900748e550aa5c520c0e"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.2.0/valyu-linux-x64.tar.gz"
      sha256 "a871b72cf95eb11241d9a12f6f027529a1cf7083a4819246bb2fd77b2e2c45fe"
    end
  end

  def install
    bin.install "valyu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/valyu --version")
  end
end
