class Valyu < Formula
  desc "The search CLI for knowledge workers"
  homepage "https://github.com/valyuAI/valyu-cli"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.1.0/valyu-darwin-arm64.tar.gz"
      sha256 "d3c1abb049e2498be868bda41bfa71fbde39a596e7dd9b9264a4f17c184ee3af"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.1.0/valyu-darwin-x64.tar.gz"
      sha256 "395745ed021062b4c33a45fa6360fdb45c350457a9793856de4c5d68458970d0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.1.0/valyu-linux-arm64.tar.gz"
      sha256 "b5fc4470a8be36016438b7140d04c432aedb097acdbb6bdfb9108801066d1926"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.1.0/valyu-linux-x64.tar.gz"
      sha256 "5a5dc27a5471a110ba48953d86f32655707abd38c9440342b7d5d5001b401769"
    end
  end

  def install
    bin.install "valyu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/valyu --version")
  end
end
