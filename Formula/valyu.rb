class Valyu < Formula
  desc "The search CLI for knowledge workers"
  homepage "https://github.com/valyuAI/valyu-cli"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.1/valyu-darwin-arm64.tar.gz"
      sha256 "861466fe429bdf9a3632d1965e768255f30f2a3a47c5c66a17725e6848e1135a"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.1/valyu-darwin-x64.tar.gz"
      sha256 "502d2d25b1ddde24a7e03c43fdb21b07fa284ae918cf18227c453de5cdd359f3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.1/valyu-linux-arm64.tar.gz"
      sha256 "0bf0a19006ba28b5d93e3042eb04d2a03e9d2cf73e9f8b805f492d4a6b1c3754"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.1/valyu-linux-x64.tar.gz"
      sha256 "7afd4f201c6c714dbad59f85830ca1cc59e2ef6d534cf8fad1737db092fba9b6"
    end
  end

  def install
    bin.install "valyu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/valyu --version")
  end
end
