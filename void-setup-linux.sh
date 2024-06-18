<<COMMENT

xbps-install -u xbps
xbps-install -Suy
void-installer
bash
xbps-install -Suy git

COMMENT

# Creating projects folder
mkdir -p ~/Desktop ~/Documents ~/Downloads ~/Music ~/Pictures ~/Videos ~/Projects ~/Paths

# Installing packages from the official Void repository
sudo xbps-install -Suy void-repo-nonfree void-repo-multilib void-repo-multilib-nonfree
sudo xbps-install -Suy NetworkManager xorg gnome pulseaudio
sudo xbps-install -Suy gtk+3-devel clang cmake ninja pkg-config glibc-32bit mesa-32bit mesa-dri-32bit
sudo xbps-install -Suy wget flatpak wine ufw google-fonts-ttf papirus-icon-theme fastfetch
sudo xbps-install -Suy vscode neovim nodejs
sudo xbps-install -Suy flameshot gnome-boxes firefox steam
sudo xbps-install -Suy gimp inkscape krita blender lmms obs kdenlive

# NPM install
sudo npm install -g npm yarn typescript vite@latest tailwindcss @reacticons/ionicons -y

# Flutter SDK download
git clone https://github.com/flutter/flutter.git ~/Paths/flutter

# Installing .NET SDK
wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh
sudo chmod +x ./dotnet-install.sh
./dotnet-install.sh --version latest
sudo rm ./dotnet-install.sh

# Enable and install Flatpaks
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo flatpak install flathub com.mattjakeman.ExtensionManager net.nokyan.Resources com.discordapp.Discord com.github.finefindus.eyedropper org.upscayl.Upscayl com.usebottles.bottles -y

# Open web links
# xdg-open https://github.com/lassekongo83/adw-gtk3/releases
# xdg-open https://developer.android.com/studio
# xdg-open https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/
# xdg-open https://addons.mozilla.org/en-US/firefox/addon/darkreader/

# Git configurations
git config --global user.name "Darlan Pacheco"
git config --global user.email "143919135+darlanpacheco@users.noreply.github.com"
git config --global core.editor "nvim"

# UFw set up
sudo ufw limit 22/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable

# Setting up Bash
echo 'PS1="\[\e[1;32m\]\h\[\e[1;34m\](\W)\[\e[0m\] "

alias ls="ls --color=auto"
alias xi="sudo xbps-install"
alias xq="xbps-query"
alias xr="sudo xbps-remove"

export PATH="$PATH:$HOME/Paths/flutter/bin"
export PATH="$PATH:$HOME/.dotnet/"' >~/.bashrc

# Setting up VSCode
mkdir -p ~/.config/"Code - OSS"/User
echo '{
  "[html]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[css]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[javascript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[javascriptreact]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[typescript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[typescriptreact]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[json]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[jsonc]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },

  "editor.quickSuggestions": {
    "strings": "on"
  },
  "editor.fontFamily": "spline sans mono",
  "editor.wordWrap": "on",
  "editor.minimap.enabled": false,
  "editor.formatOnSave": true,
  "editor.stickyScroll.enabled": false,
  "editor.fontSize": 17.5,

  "workbench.colorCustomizations": {
    "editor.background": "#1E1E1E",
    "panel.background": "#1E1E1E",
    "terminal.background": "#1E1E1E",
    "statusBar.background": "#1E1E1E",
    "sideBar.background": "#242424",
    "sideBarSectionHeader.background": "#242424",
    "statusBar.border": "#454545",
    "panel.border": "#454545",
    "editorGroup.border": "#454545",
    "sideBar.border": "#00000000",
    "sideBarSectionHeader.border": "#00000000",
    "scrollbar.shadow": "#00000000"
  },
  "workbench.startupEditor": "none",
  "workbench.editor.showTabs": "none",
  "workbench.iconTheme": "icons",
  "workbench.activityBar.location": "hidden",

  "explorer.confirmDelete": false,
  "explorer.compactFolders": false,
  "explorer.fileNesting.enabled": true,
  "explorer.fileNesting.patterns": {
    ".gitignore": "*.json, *.yaml, *.xml, *.iml, *.csproj, *.sln, .prettierrc, .editorconfig, .eslintrc.cjs, postcss.config.js, tailwind.config.js, vite.config.ts, CHANGELOG.md"
  },

  "breadcrumbs.enabled": false,
  "terminal.integrated.fontSize": 17.5,
  "update.showReleaseNotes": false,
  "window.menuBarVisibility": "hidden",
  "workbench.statusBar.visible": false
}' >~/.config/"Code - OSS"/User/settings.json

echo '[
  {
    "key": "ctrl+e",
    "command": "workbench.action.toggleSidebarVisibility"
  },
  {
    "key": "ctrl+h",
    "command": "workbench.action.toggleStatusbarVisibility"
  },
  {
    "key": "ctrl+t",
    "command": "workbench.action.togglePanel"
  }
]' >~/.config/"Code - OSS"/User/keybindings.json

code-oss --install-extension Vue.volar
code-oss --install-extension Dart-Code.flutter
code-oss --install-extension bradlc.vscode-tailwindcss
code-oss --install-extension mtxr.sqltools
code-oss --install-extension foxundermoon.shell-format
code-oss --install-extension esbenp.prettier-vscode
code-oss --install-extension mongodb.mongodb-vscode
code-oss --install-extension lkrms.inifmt
code-oss --install-extension tal7aouy.icons
code-oss --install-extension eamodio.gitlens
code-oss --install-extension dbaeumer.vscode-eslint
code-oss --install-extension dsznajder.es7-react-js-snippets
code-oss --install-extension usernamehw.errorlens
code-oss --install-extension EditorConfig.EditorConfig
code-oss --install-extension ms-vscode.live-server
code-oss --install-extension ms-vscode.vscode-typescript-next
code-oss --install-extension ms-dotnettools.csdevkit
code-oss --install-extension ms-dotnettools.vscode-dotnet-runtime

sudo xbps-install -Suy && flatpak update -y && flutter upgrade

# Setting up links
sudo ln -s /etc/sv/NetworkManager /var/service
sudo ln -s /etc/sv/dbus /var/service
sudo ln -s /etc/sv/gdm /var/service
