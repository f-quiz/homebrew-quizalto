class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "1bbe478"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/cli/v1bbe478/quizalto-darwin-arm64"
      sha256 "7ace9483bb8a833b83afa446674705eb045c734124e580cd1e359b10c4200f07"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/cli/v1bbe478/quizalto-darwin-amd64"
      sha256 "a074fcd0c4fbe241896db539ec9a2ad639ab6f98dcabe58af9ddad05af23721f"
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
