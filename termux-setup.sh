#!/data/data/com.termux/files/usr/bin/bash

# Prompt for user display name and description
read -p "🔤 Enter your display name: " USERNAME
read -p "🖋️ Enter a short description: " USERDESC

# Install essential packages
pkg update && pkg upgrade -y
pkg install -y git curl wget nano vim python zip unzip \
figlet toilet ruby neofetch zsh tree termux-api

gem install lolcat
termux-setup-storage

# Create main directory
MAIN_DIR="---${USERNAME// /_}_termux---"
mkdir -p ~/$MAIN_DIR/{Scripts,Notes,Tools,Web,Python,Backups,Projects}

# Directory color script
cat << EOF > ~/$MAIN_DIR/Scripts/dir-color.sh
#!/data/data/com.termux/files/usr/bin/bash
echo -e "\e[1;35m╭───────────────────────────────────────╮"
echo -e "│  \e[1;36m🏠 \e[1;33mHOME DIRECTORY: \e[1;32m$MAIN_DIR \e[1;35m│"
echo -e "╰───────────────────────────────────────╯\e[0m"
ls --color=auto
EOF

chmod +x ~/$MAIN_DIR/Scripts/dir-color.sh

# Create Zsh configuration
cat << EOF > ~/.zshrc
export MAIN_DIR="$MAIN_DIR"
export PATH=\$PATH:~/\$MAIN_DIR/Scripts
export USERNAME="$USERNAME"
export USERDESC="$USERDESC"

PROMPT='%F{blue}╭─%F{green}[%F{cyan}Termux%F{green}]──%F{yellow}[%F{magenta}%~%F{yellow}]%F{blue}
╰─%F{red}➤%F{white} '

cd ~/\$MAIN_DIR
clear
toilet -f big -F gay "\$USERNAME" | lolcat
echo -e "\e[1;32mWelcome to \$USERNAME's Termux\n\e[1;33m\$USERDESC\n\e[1;36mMain Directory: ~/\$MAIN_DIR\e[0m" | lolcat
echo -e "\e[1;35mType 'menu' for custom commands\e[0m"

alias home="cd ~/\$MAIN_DIR && ~/\$MAIN_DIR/Scripts/dir-color.sh"
alias ls="ls --color=auto"

function menu() {
    echo -e "\e[1;33m╔══════════════════════════════════════╗"
    echo -e "║     \e[1;36m\$USERNAME's TERMUX MENU\e[1;33m        ║"
    echo -e "╠══════════════════════════════════════╣"
    echo -e "║ \e[1;32mhome\e[0m    - Return to main directory    ║"
    echo -e "║ \e[1;32mmenu\e[0m    - Show this help menu        ║"
    echo -e "║ \e[1;32mupdate\e[0m - Update packages             ║"
    echo -e "║ \e[1;32mweb\e[0m     - Go to Web projects         ║"
    echo -e "║ \e[1;32mpy\e[0m      - Go to Python projects      ║"
    echo -e "║ \e[1;32mtools\e[0m   - Go to Tools directory      ║"
    echo -e "╚══════════════════════════════════════╝\e[0m"
}

function web() { cd ~/\$MAIN_DIR/Web && ~/\$MAIN_DIR/Scripts/dir-color.sh }
function py() { cd ~/\$MAIN_DIR/Python && ~/\$MAIN_DIR/Scripts/dir-color.sh }
function tools() { cd ~/\$MAIN_DIR/Tools && ~/\$MAIN_DIR/Scripts/dir-color.sh }
function update() { pkg update && pkg upgrade -y }

~/\$MAIN_DIR/Scripts/dir-color.sh
neofetch
EOF

cp ~/.zshrc ~/.bashrc

# Welcome message
cat << EOF > ~/$MAIN_DIR/Notes/Welcome.md
# Welcome to \$USERNAME's Termux Environment

## Description
\$USERDESC

## Directory Layout
- 📁 Scripts
- 📁 Tools
- 📁 Web
- 📁 Python
- 📁 Backups
- 📁 Projects
- 📁 Notes

> “Customize your shell, and own your flow.” — Termux Master
EOF

echo -e "\e[1;32m✅ Setup complete, \$USERNAME!\e[0m"
echo -e "\e[1;36mType 'zsh' or restart Termux to activate.\e[0m"
