class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "f1ba6ef"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/vf1ba6ef/quizalto-darwin-arm64"
      sha256 "178a9045883391215b41af744446da66c15d522f419a1ad85ba0527bcf9de17a"
    end
    on_intel do
      url "https://www.quizalto.com/assets/vf1ba6ef/quizalto-darwin-amd64"
      sha256 "2d442bebad63ee7e57d7551418d414bc67e2b198d540e4306db0f851abf06eb9"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "quizalto-darwin-arm64" => "quizalto"
    else
      bin.install "quizalto-darwin-amd64" => "quizalto"
    end
  end

  test do
    system bin/"quizalto", "--help"
  end
end
