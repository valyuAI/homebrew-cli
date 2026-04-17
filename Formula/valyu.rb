class Valyu < Formula
  desc "The search CLI for knowledge workers"
  homepage "https://github.com/valyuAI/valyu-cli"
  version "1.0.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.7/valyu-darwin-arm64.tar.gz"
      sha256 "bc02aea37f10d4f5a7f660515179ff045cfbc754efebacf59248d7fe3a4d864f"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.7/valyu-darwin-x64.tar.gz"
      sha256 "87768097f4f5d845b0d6d8970a58ce39d2cadcda989169bc043058cb20711d0e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.7/valyu-linux-arm64.tar.gz"
      sha256 "a4e49d412cd194999fec89cc4b720dadcbaa976ef1cc26488876845af89b692c"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.7/valyu-linux-x64.tar.gz"
      sha256 "a04513fbf2feb1639ffe710eee13e11eaf81812808db0d11e9f930a12ff11e16"
    end
  end

  def install
    bin.install "valyu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/valyu --version")
  end
end
