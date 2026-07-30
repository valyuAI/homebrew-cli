class Valyu < Formula
  desc "The search CLI for knowledge workers"
  homepage "https://github.com/valyuAI/valyu-cli"
  version "1.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.2.3/valyu-darwin-arm64.tar.gz"
      sha256 "0c0aaf240a3650291ad72f0d0822f7871f7d5706b9170fad53de1838a2cbcfe3"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.2.3/valyu-darwin-x64.tar.gz"
      sha256 "67c50749bc56a7408853e6b56db8ac29559cd14c21a2ec4eff43dbbfea0be77e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.2.3/valyu-linux-arm64.tar.gz"
      sha256 "b9876909e1928a3a2ac036a8fb3f38d8cc0c5b418da76657b3238fe9029fed3f"
    else
      url "https://github.com/valyuAI/valyu-cli/releases/download/v1.2.3/valyu-linux-x64.tar.gz"
      sha256 "5492876a3567d443f6eefa4fd6240208fbc6d5e75795937382430af23222843e"
    end
  end

  def install
    bin.install "valyu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/valyu --version")
  end
end
