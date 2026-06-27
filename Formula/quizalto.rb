class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "0c36f85"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v0c36f85/quizalto-darwin-arm64"
      sha256 "d56a08c6b46670e395f5eb8c0bc43245c3bc0300d98622834264d15177a16fa4"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v0c36f85/quizalto-darwin-amd64"
      sha256 "18c5dd7940b1a79aae60139e729bcd1dd8678a2adbf91fb75718253450038b7a"
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
