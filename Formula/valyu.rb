class Valyu < Formula
  desc "The search CLI for knowledge workers"
  homepage "https://github.com/valyuAI/valyu-cli"
  version "1.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.4.2/valyu-darwin-arm64.tar.gz"
      sha256 "70f8f80278fbe9e2631d678bb97f3017d74e8ff2ddb76da57be3ebac0a0ffa4a"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.4.2/valyu-darwin-x64.tar.gz"
      sha256 "6e21308cc92a0a6e543905e10c42a88642427d0e1a14e5cb080613f53bae054e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.4.2/valyu-linux-arm64.tar.gz"
      sha256 "beafd1f317afd208b533d3aadc313220df8fd864621cba56e96905ee952e31c0"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.4.2/valyu-linux-x64.tar.gz"
      sha256 "a85887c4f51860e03120ba1f64223a6857a4318572a916585c83399222004c91"
    end
  end

  def install
    bin.install "valyu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/valyu --version")
  end
end
