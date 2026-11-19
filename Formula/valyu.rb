class Valyu < Formula
  desc "The search CLI for knowledge workers"
  homepage "https://github.com/valyuAI/valyu-cli"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.4.0/valyu-darwin-arm64.tar.gz"
      sha256 "3c0dabeb1c0d82887fcab40c89573fae4849ea4ee85fdd51331db0256baf6da1"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.4.0/valyu-darwin-x64.tar.gz"
      sha256 "6e735d02f38c4e4f5ce24711a554a156f4bf137e0c415f1ac5210e8c6f48c72d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.4.0/valyu-linux-arm64.tar.gz"
      sha256 "3cac73cfb5e8bcae080c9e251742ef37fa8e0a520cc5f1300a3c2e385b7b66d2"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.4.0/valyu-linux-x64.tar.gz"
      sha256 "d3a12efd3af9f00e3ae8f49196c95779c028ef76732484df3a9b3f4d0c952845"
    end
  end

  def install
    bin.install "valyu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/valyu --version")
  end
end
