# Copy ZSH Settings
echo "[COPY] Shell Settings"
cp ./conf/shell/.zshrc ~/
cp ./conf/shell/.hushlogin ~/


# Copy Git settings
echo "[COPY] Git Settings"
cp ./conf/git/.gitconfig ~/

# Copy VSCode settings
echo "[COPY] VSCode Settings"
cp ./conf/vscode/settings.json ~/Library/Application\ Support/Code/User

# Install VSCode packages
echo "[PACKAGES] Installing xxtereshko-bundle..."
code --install-extension xxtereshko.xxtereshko-bundle