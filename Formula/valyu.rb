class Valyu < Formula
  desc "The search CLI for knowledge workers"
  homepage "https://github.com/valyuAI/valyu-cli"
  version "1.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.8/valyu-darwin-arm64.tar.gz"
      sha256 "3f10fe3b3a6c17e628c7a891e17c115752cf76d96bad93595b26312f85a38b38"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.8/valyu-darwin-x64.tar.gz"
      sha256 "263f59c2a9278837357f281d7c17c87889d9276788104374a9a4362630614aa2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.8/valyu-linux-arm64.tar.gz"
      sha256 "7fb134e7433aa737b6f940d67978e4bc85ee3f6e19364a564064d8be7e32283e"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.8/valyu-linux-x64.tar.gz"
      sha256 "f1455e15b2253e8024316116b75a537ddd2c7af7f6acc3b8014168a8d520fc42"
    end
  end

  def install
    bin.install "valyu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/valyu --version")
  end
end
