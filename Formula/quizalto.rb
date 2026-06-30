class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "23651a2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v23651a2/quizalto-darwin-arm64"
      sha256 "f355871c19c562347cb5442cdb34cfdcc3432ba13db881076040fe6bb0565995"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v23651a2/quizalto-darwin-amd64"
      sha256 "b98694dc817539d0849c76fed28b74b82e0fed7964779837dc389f432f97dd4e"
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
