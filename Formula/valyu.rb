class Valyu < Formula
  desc "The search CLI for knowledge workers"
  homepage "https://github.com/valyuAI/valyu-cli"
  version "1.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.3.3/valyu-darwin-arm64.tar.gz"
      sha256 "ae33a884a198fe8bb0ecc9dafefdd925f172f102c14bcaa62891b28f911e32fd"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.3.3/valyu-darwin-x64.tar.gz"
      sha256 "e2771942c54892f91ef7445f8e40d7e8710467ad24a2f2a34959c29fef693fd0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.3.3/valyu-linux-arm64.tar.gz"
      sha256 "c7667d98afb43b2c2f6388d4cfafd9e839c336be810dbbe324f605e31a3ecc51"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.3.3/valyu-linux-x64.tar.gz"
      sha256 "6177996e9a713f0f0582a0d4df9520ea84b607469bc6b22ea23cb3d51b5d9031"
    end
  end

  def install
    bin.install "valyu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/valyu --version")
  end
end
