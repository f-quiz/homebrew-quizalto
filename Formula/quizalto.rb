class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "867845f"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v867845f/quizalto-darwin-arm64"
      sha256 "266824da35d717d8adda880ebfeda83d7b151a3dc7e87ad894925e179f941be3"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v867845f/quizalto-darwin-amd64"
      sha256 "68efb2f6d7d65a446726391a57e849079334107da735c5510b17b8f54157baf4"
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
