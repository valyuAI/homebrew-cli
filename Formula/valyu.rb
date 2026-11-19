class Valyu < Formula
  desc "The search CLI for knowledge workers"
  homepage "https://github.com/valyuAI/valyu-cli"
  version "1.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.4.1/valyu-darwin-arm64.tar.gz"
      sha256 "54e0aa5b981f0274e50b87a533f9ffcff212de5e75f0cad1ca6ed186636e7d24"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.4.1/valyu-darwin-x64.tar.gz"
      sha256 "33c858a269d023a46f4d4ff07fd97d9aa225252b041937c8144ec7f1df879b1a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.4.1/valyu-linux-arm64.tar.gz"
      sha256 "609ca005885f3e14bf00f23569ba8c640853c53389399128b2bab2bbc3f45874"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.4.1/valyu-linux-x64.tar.gz"
      sha256 "d67c9461adda4a1d547dbb37b6946ad646241271737df44f796ec6ba4d97f36c"
    end
  end

  def install
    bin.install "valyu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/valyu --version")
  end
end
