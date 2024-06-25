class Keyforge < Formula
  include Language::Python::Virtualenv

  desc "Secure password generation CLI tool"
  homepage "https://github.com/jan-reichhardt"
  url "https://github.com/jan-reichhardt/homebrew-keyforge.git", tag: "v0.0.2"
  license "MIT"
  head "https://github.com/jan-reichhardt/homebrew-keyforge.git", branch: "main"

  depends_on "python@3.12"

  def install
    libexec.install "password_gen.py"
    (bin/"password-gen").write <<~EOS
      #!/bin/bash
      #{Formula["python@3.12"].opt_bin}/python3 #{libexec}/password_gen.py "$@"
    EOS
    chmod 0755, bin/"password-gen"
  end

  test do
    assert_match(/\w{12}/, shell_output("#{bin}/password-gen"))
  end
end
