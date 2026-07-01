class Valyu < Formula
  desc "The search CLI for knowledge workers"
  homepage "https://github.com/valyuAI/valyu-cli"
  version "1.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.2.1/valyu-darwin-arm64.tar.gz"
      sha256 "a0e959857d3932236b56f77adbb0842f752d3fd9912facf57f92f24cb31972cd"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.2.1/valyu-darwin-x64.tar.gz"
      sha256 "bf5b546e053baa4ca2916f0ba8625c3b1358a53bbe117885b1515990a792f6dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.2.1/valyu-linux-arm64.tar.gz"
      sha256 "e038bf1baada30ad4f4e13334168df38735411e74c420f93589e4f09edf950d9"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.2.1/valyu-linux-x64.tar.gz"
      sha256 "72ab46ec19cf5bd6b53496e70f3927fcf89a5e6f2fef09553d9b0247833d73ca"
    end
  end

  def install
    bin.install "valyu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/valyu --version")
  end
end
