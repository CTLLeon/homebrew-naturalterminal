class Naturalterminal < Formula
    desc "A natural language terminal tool"
    homepage "https://github.com/CTLLeon/homebrew-naturalterminal" # Your main repo URL
    url "https://github.com/CTLLeon/homebrew-naturalterminal/releases/download/v1.0.0/NaturalTerminal-macos-v1.0.0.tar.gz"
    sha256 "2b77ebc9e66355a617cc2da02bca807184e65903684daeae6550955d9876ffce" # Paste the checksum from Step 3
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
