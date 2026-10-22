class Quizalto < Formula
  desc "Quizalto CLI - Interact with the Quizalto API from your terminal"
  homepage "https://www.quizalto.com"
  version "dd9c524"
  license "MIT"

  on_macos do
    on_arm do
      url "https://www.dev.quizalto.com/assets/vdd9c524/quizalto-darwin-arm64"
      sha256 "166f8e7ffee8b3d91a5fbc23b312ed73c63e2009e6c36fe6ecff2b606977cccc"
    end
    on_intel do
      url "https://www.dev.quizalto.com/assets/vdd9c524/quizalto-darwin-amd64"
      sha256 "6a4323aa3f48eba65ad6f588c917377246c38ce66b8beb411938deeb17eddbc3"
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
