class Fzftab < Formula
  desc "Replace zsh completion selection menu with fzf"
  homepage "https://github.com/Aloxaf/fzf-tab"
  url "https://github.com/Aloxaf/fzf-tab/archive/refs/heads/master.tar.gz"
  version "0.1.0"
  sha256 "9faae664a2d0432d14041cc308dabf2115bbcab3ec9386d4b0b9e8cf2d05046f"

  def install
    prefix.install Dir["*"]
  end

  def caveats
    <<~EOS
      To activate fzf-tab, add the following to your .zshrc:
        source "$(brew --prefix fzftab)/fzf-tab.zsh"
    EOS
  end

  test do
    assert_path_exists prefix/"fzf-tab.zsh"
  end
end
