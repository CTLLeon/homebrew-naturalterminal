class Naturalterminal < Formula
  desc "A natural language terminal tool"
  homepage "https://github.com/CTLLeon/homebrew-naturalterminal"
  url "https://github.com/CTLLeon/homebrew-naturalterminal/releases/download/v1.0.0/NaturalTerminal-macos-v1.0.0.tar.gz"
  sha256 "f4147272da568ba9838c5013e06f59620f2a8bc130e41bc8bd01f7a76c3cdaf7"
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