class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "899f810"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v899f810/quizalto-darwin-arm64"
      sha256 "2bf731bc7fc5a1868bde4c43face51f723e4e616beecf0d7ee0da9d7b91ce5b1"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v899f810/quizalto-darwin-amd64"
      sha256 "bd6088ef1225afc5ad0f001fd90116f7bbdb021c0f5feea89cdef9202de437a8"
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
