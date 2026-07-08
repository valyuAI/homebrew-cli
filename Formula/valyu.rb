class Valyu < Formula
  desc "The search CLI for knowledge workers"
  homepage "https://github.com/valyuAI/valyu-cli"
  version "1.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.2.2/valyu-darwin-arm64.tar.gz"
      sha256 "12bcd000a20736c8e6db1065a71c6970b5127b5e88b756692790707d335167f9"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.2.2/valyu-darwin-x64.tar.gz"
      sha256 "9b1d96d48e24a0ae7ee01e00eadd60e5c4fab029079819fc1d2fd641d789e572"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.2.2/valyu-linux-arm64.tar.gz"
      sha256 "09bde9b74583f42dc3234fb7c028a86047c7bf3b775025da06773d0186823b5a"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.2.2/valyu-linux-x64.tar.gz"
      sha256 "48018e3d06f46d2ce02bb0ae941c2be0e4c93554ee0ca1a7a5797a8fbe87479c"
    end
  end

  def install
    bin.install "valyu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/valyu --version")
  end
end
