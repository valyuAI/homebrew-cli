class Valyu < Formula
  desc "The search CLI for knowledge workers"
  homepage "https://github.com/valyuAI/valyu-cli"
  version "1.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.5/valyu-darwin-arm64.tar.gz"
      sha256 "3b612bb88a52731a7704782d1ea2b31e4670583185b4838b9b983d9c1243090f"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.5/valyu-darwin-x64.tar.gz"
      sha256 "9f89ed6383153dff70a7bb80d62d79b89d20888f74ef8da25fc99f40ff3dbc4a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.5/valyu-linux-arm64.tar.gz"
      sha256 "df5ae1975d720bcfea009b24d89a464408e7b49f89cc834c1b8673e4ab1ade2e"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.0.5/valyu-linux-x64.tar.gz"
      sha256 "2f1cb3fbd81f55cede2277b6365deaf0eb138005fc061b251ebaf546f302f079"
    end
  end

  def install
    bin.install "valyu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/valyu --version")
  end
end
