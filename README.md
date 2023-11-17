### README.md for Tomoko's ZSH Configuration

# Tomoko's ZSH Configuration - The World of Terminal Awesomeness (¬‿¬)

Hello there, fellow terminal adventurers! (｡♥‿♥｡) Are you ready to join me on an exciting journey to clone and configure my legendary Zsh setup? With an ASCII art banner and some wisdom from Lain, your terminal is about to transform into a world of wonder.




## 🚀 Getting Started

### Prerequisites

Before you embark on this magical journey, ensure you're well-prepared for the adventure. You should have Zsh installed on your system and a sense of curiosity. Follow these commands for both Arch and Ubuntu:

On Arch:

```bash
sudo pacman -S zsh
```

On Ubuntu:

```bash
sudo apt-get install zsh
```

### Cloning the Repository

1. **Clone the repository** to obtain the artifacts of power (¬‿¬):

    ```bash
    git clone https://github.com/Yikesec/Navi/
    cd Navi
    ```

2. **Now, let's immerse ourselves in the sacred texts**:

    - `lain_quotes.txt`: A treasure trove of wisdom to adorn your terminal.
    - `zsh.zshrc`: The mystical script that will transform your Zsh into a window of enlightenment.

### Installation Steps

Prepare to unleash the magic:

1. **Infuse your sanctuary with the essence of `lain_quotes.txt`** (your home directory):

    ```bash
    cp lain_quotes.txt ~/
    ```

2. **Harness the power of `zsh.zshrc` to transmute your Zsh**:

    ```bash
    cp zsh.zshrc ~/.zshrc
    ```

3. **Awaken the spirits of the new configuration**:

    ```bash
    source ~/.zshrc
    ```

#### Troubleshooting Zsh Plugins (⇀‸↼‶)

Sometimes, you may encounter issues related to Zsh plugins, such as "no such file or directory" errors. If you face such issues, follow these steps to resolve them and keep your cool:

1. **Check if the Plugins are Installed**:

   Ensure that the "zsh-autosuggestions" and "zsh-syntax-highlighting" plugins are installed on your system. You can typically install these plugins using a package manager or by following the installation instructions from their respective GitHub repositories.

   For example, to install "zsh-autosuggestions" on Ubuntu:

   ```bash
   sudo apt-get install zsh-autosuggestions
   ```

   On Arch:

   ```bash
   sudo pacman -S zsh-autosuggestions
   ```

2. **Update Plugin Paths**:

   Open your `.zshrc` file and modify the lines that source these plugins to match the actual paths where the plugins are installed on your system. Update the paths with precision:

   ```bash
   source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
   source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
   ```

3. **Restart Zsh**:

   Save your `.zshrc` file and restart your Zsh shell to apply the updated configuration:

   ```bash
   exec zsh
   ```

Now you should be ready to enjoy your enhanced Zsh configuration with the power of the Navi setup and the Zsh plugins, just like Tomoko would want! (✧∀✧)
