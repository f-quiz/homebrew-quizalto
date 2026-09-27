class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "a00f6d6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.quizalto.com/assets/va00f6d6/quizalto-darwin-arm64"
      sha256 "cc1cf5e880a50fb766e62e22de66d786bce72a723739fd8a478a810ffb3509b6"
    end
    on_intel do
      url "https://www.quizalto.com/assets/va00f6d6/quizalto-darwin-amd64"
      sha256 "993896d1aa373a35800a0e981aebabcf588612ffe2be53adefea98e1e69a3a51"
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
