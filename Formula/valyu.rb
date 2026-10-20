class Valyu < Formula
  desc "The search CLI for knowledge workers"
  homepage "https://github.com/valyuAI/valyu-cli"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.3.0/valyu-darwin-arm64.tar.gz"
      sha256 "247b613a34baa0b840e7cacbbf1f9abdae029e51dc1d983f5954ac56e6271531"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.3.0/valyu-darwin-x64.tar.gz"
      sha256 "48326271a2596b4032dad390fde2b0e281161749419bd77ee0b54be4872ad0bb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.3.0/valyu-linux-arm64.tar.gz"
      sha256 "5a47a19a7082c78f516c67d7fc7285b37d61a8c35d94a48b8eb648bfff03bb28"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.3.0/valyu-linux-x64.tar.gz"
      sha256 "7245c00ba8411e63fa82a23f946552fac26381d211bbcc8b93cdef50ff45b5f9"
    end
  end

  def install
    bin.install "valyu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/valyu --version")
  end
end
