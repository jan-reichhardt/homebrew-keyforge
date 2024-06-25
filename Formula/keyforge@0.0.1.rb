class KeyforgeAT001 < Formula
  include Language::Python::Virtualenv

  desc "Secure password generation CLI tool"
  homepage "https://github.com/jan-reichhardt"
  url "https://github.com/jan-reichhardt/homebrew-keyforge.git", tag: "v0.0.1"
  license "MIT"
  head "https://github.com/jan-reichhardt/homebrew-keyforge.git", branch: "main"

  depends_on "python"

  def install
    print("Hello World")
  end

  test do
    system "false"
  end
end
