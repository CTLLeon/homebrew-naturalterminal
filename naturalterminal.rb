class Naturalterminal < Formula
    desc "A natural language terminal tool"
    homepage "https://github.com/CTLLeon/homebrew-naturalterminal" # Your main repo URL
    url "https://github.com/CTLLeon/homebrew-naturalterminal/releases/download/v1.0.0/NaturalTerminal-macos-v1.0.0.tar.gz"
    sha256 "f4147272da568ba9838c5013e06f59620f2a8bc130e41bc8bd01f7a76c3cdaf7" # Paste the checksum from Step 3
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
