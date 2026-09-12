class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "5d5ab31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v5d5ab31/quizalto-darwin-arm64"
      sha256 "c3eec051a00996e0562f7c23b163f9d4a7a8f303f69d14ced703ea099c93787f"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v5d5ab31/quizalto-darwin-amd64"
      sha256 "fe7ce2514cc5b22ac1a61d525ecbfd544cd5f6b756b65818aa2967d38a879c15"
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
