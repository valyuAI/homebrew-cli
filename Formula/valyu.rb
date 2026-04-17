class Valyu < Formula
  desc "The search CLI for knowledge workers"
  homepage "https://github.com/valyuAI/valyu-cli"
  version "1.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.6/valyu-darwin-arm64.tar.gz"
      sha256 "381ef3445a7280d42ee7c9720ceb29f4db481b2d69ab5ebac137a98db0aa0000"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.6/valyu-darwin-x64.tar.gz"
      sha256 "9902c51f9dda48772c0fc1b7b79ed2be7a988209db653c161929b48ed764b183"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.6/valyu-linux-arm64.tar.gz"
      sha256 "c36453f683c36c4f5a07abb77fbac23d5bba9b80b6a8767b1dcf806c200a4e1a"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.6/valyu-linux-x64.tar.gz"
      sha256 "63ca6ce9c46a99309de0afb30c6056e310d5e1e04dc6d6b411631517f5e702ce"
    end
  end

  def install
    bin.install "valyu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/valyu --version")
  end
end
