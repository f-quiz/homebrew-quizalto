class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "29f5e08"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v29f5e08/quizalto-darwin-arm64"
      sha256 "7f8e2bfd67c7961db906c7dce7224534b854e9e0b68f974f6c2897225cf06ac7"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v29f5e08/quizalto-darwin-amd64"
      sha256 "7b6093985f2888a3066ae3e6f76f0f22e705ab43036ad6cf6720630f9a653ed8"
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
