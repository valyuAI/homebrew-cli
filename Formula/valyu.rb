class Valyu < Formula
  desc "The search CLI for knowledge workers"
  homepage "https://github.com/valyuAI/valyu-cli"
  version "1.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.2/valyu-darwin-arm64.tar.gz"
      sha256 "9c39fc00bbea4dd85305fc4707c386dc175b85ba24347a92079242eb36d6c785"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.2/valyu-darwin-x64.tar.gz"
      sha256 "5ea74f7fb67e232e196d2efd194dd2d74e1e03cabfbac71116670488bc0d4661"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.2/valyu-linux-arm64.tar.gz"
      sha256 "080b9dd4a26eef81b050c2fab7e92ec776206143f7765e3559e359d7b158fcb4"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.2/valyu-linux-x64.tar.gz"
      sha256 "1eafa1ab72e3717dc473c5f7b69d38cdea0fd81a4661ce2e0fc4265c40ad4690"
    end
  end

  def install
    bin.install "valyu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/valyu --version")
  end
end
