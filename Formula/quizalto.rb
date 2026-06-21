class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "024141d"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v024141d/quizalto-darwin-arm64"
      sha256 "8338a5c9e01cb6c5fdcd5c4d22e2798e225b09fa0f7956ff4d09d2b1764a08bd"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v024141d/quizalto-darwin-amd64"
      sha256 "82aeebbb76dd88538d8562d9a7204a141f31ee0e9526397a9796c65dd1c3cf05"
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
