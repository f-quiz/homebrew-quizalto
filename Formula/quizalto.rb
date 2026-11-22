class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "702c74b"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v702c74b/quizalto-darwin-arm64"
      sha256 "fcea88622cee18712a165ab43aec500f6e26614ba5511ad40245f900b562f2d4"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v702c74b/quizalto-darwin-amd64"
      sha256 "d7fd5e4ddb55f282a7bf874bf5f5df0f768127c851eeed3d35ec0a9606b95900"
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
