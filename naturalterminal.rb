class Naturalterminal < Formula
    desc "A natural language terminal tool"
    homepage "N/A" # Your main repo URL
    url "https://github.com/CTLLeon/NaturalTerminal/releases/download/v1.0.0/NaturalTerminal-macos-v1.0.0.tar.gz"
    sha256 "3098ac2ceeae8d8d8a8aed30b53121054a1e75b3b4804353689cb1602522b2db" # Paste the checksum from Step 3
    version "1.0.0"
  
    def install
      bin.install "NaturalTerminal" # Installs the binary to /usr/local/bin
      (prefix/"setup-alias.sh").install "setup-alias.sh" # Installs the script
      (prefix/"setup-alias.sh").chmod 0755 # Makes it executable
    end
  
    def caveats
      <<~EOS
        To set up an alias 'n' for 'NaturalTerminal natural', run:
          sh #{prefix}/setup-alias.sh
      EOS
    end
  
    test do
      system "#{bin}/NaturalTerminal", "--version" # Adjust if no --version flag
    end
  end