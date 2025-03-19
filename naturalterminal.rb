class Naturalterminal < Formula
  desc "A natural language terminal tool"
  homepage "https://github.com/CTLLeon/homebrew-naturalterminal"
  url "https://github.com/CTLLeon/homebrew-naturalterminal/releases/download/v1.0.0/NaturalTerminal-macos-v1.0.0.tar.gz"
  sha256 "e53890a83fed5c3fe05f572f7d9e0f4677d507538b3a95d145d747da9e8e962c"
  version "1.0.0"

  def install
    bin.install "NaturalTerminal"          # Install binary to /opt/homebrew/bin/
    prefix.install "setup-alias.sh"        # Install script directly to prefix root
    (prefix/"setup-alias.sh").chmod 0755  # Make the script executable
  end

  def caveats
    <<~EOS
      To set up an alias 'n' for 'NaturalTerminal natural', run:
        sh #{prefix}/setup-alias.sh
    EOS
  end

  test do
    system "#{bin}/NaturalTerminal", "--version"
  end
end