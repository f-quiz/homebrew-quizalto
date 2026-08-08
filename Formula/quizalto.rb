class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "56dc420"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/v56dc420/quizalto-darwin-arm64"
      sha256 "979ad3a61940782ffa690da5df4213f9fb323dcd2572953dd916a16544c42c37"
    end
    on_intel do
      url "https://www.quizalto.com/assets/v56dc420/quizalto-darwin-amd64"
      sha256 "24e5310a8239d485d07b0318a35814b16fb817818cfedbbe41e5a028315ddb4b"
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
