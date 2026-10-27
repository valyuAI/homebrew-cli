class Valyu < Formula
  desc "The search CLI for knowledge workers"
  homepage "https://github.com/valyuAI/valyu-cli"
  version "1.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.3.2/valyu-darwin-arm64.tar.gz"
      sha256 "6e60080f827ba85f1fddccb9be77ddbb5f5121026947771e3c3eafadcb6ed4f4"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.3.2/valyu-darwin-x64.tar.gz"
      sha256 "f525c47ccf050e2276fd7c55e038907f6b961ef8b60f530ac767338babbd4b3f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.3.2/valyu-linux-arm64.tar.gz"
      sha256 "9c9e1077bd24beb7ce2f09d9d1c5733a958f1e9aaeb613776bb2910de8080308"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.3.2/valyu-linux-x64.tar.gz"
      sha256 "1b0e9ddaf56794804c4347f88c0582bd3481708eb568e6801c5bd04c42630706"
    end
  end

  def install
    bin.install "valyu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/valyu --version")
  end
end
