class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "5b59099"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/cli/v5b59099/quizalto-darwin-arm64"
      sha256 "c3d91f7bdc89102d52852721227668a2cad5f42a3377594f09a632e850122fc9"
    end
    on_intel do
      url "https://www.quizalto.com/assets/cli/v5b59099/quizalto-darwin-amd64"
      sha256 "336795a11ad45b7c51f26ae6cebed464b4487f0f0d836d9db806d84e2e60697b"
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
