class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "048a12e"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/v048a12e/quizalto-darwin-arm64"
      sha256 "7648e5eb0cd880bec88e18af55adfb6f9ece14c94d472389d16a3d501f8d7bea"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/v048a12e/quizalto-darwin-amd64"
      sha256 "658351aca928446e980ff3884211cf31ac985074c207e7449523ad981ada0c03"
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
