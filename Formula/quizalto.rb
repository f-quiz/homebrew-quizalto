class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "0cb7e0b"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v0cb7e0b/quizalto-darwin-arm64"
      sha256 "9fa3184a1f652f09862551f7137d099d9aca5d1d18ee81c83e27ba63a731ac13"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v0cb7e0b/quizalto-darwin-amd64"
      sha256 "d579bd6f5d8ecce3f2602591322a51465d9dcbadff7a9ab9148a68e00e2537ac"
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
