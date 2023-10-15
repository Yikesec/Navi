### README.md for zs Code Configuration

# Project Navi ZSH Configuration

This README describes the custom Zsh shell configuration for a project titled "Navi". This configuration includes custom functions, aliases, and an ASCII art banner, offering a unique and personalized terminal experience. Follow the instructions below to implement this configuration in your own Zsh shell.

## 🚀 Getting Started

### Prerequisites

- Zsh shell installed and set as your default shell. If you have not done this yet, you can use the following commands:

    ```bash
    sudo apt-get update && sudo apt-get install zsh
    chsh -s $(which zsh)
    ```

- `oh-my-zsh` for managing your Zsh configuration. Install it with:

    ```bash
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```

- `exa`, a modern replacement for `ls`. Install using:

    ```bash
    sudo apt-get install exa
    ```

- `toilet` for ASCII art text. Install it using:

    ```bash
    sudo apt-get install toilet
    ```

- `zsh-autosuggestions` and `zsh-syntax-highlighting` plugins. Install them with:

    ```bash
    sudo apt-get install zsh-autosuggestions zsh-syntax-highlighting
    ```

- `curl` for making API requests. Install it using:

    ```bash
    sudo apt-get install curl
    ```

### Installation Steps

1. **Backup your existing Zsh configuration** (if any):

    ```bash
    mv ~/.zshrc ~/.zshrc.backup
    ```

2. **Copy the provided code** into your `~/.zshrc`:

    Create or open your Zsh configuration file with a text editor:

    ```bash
    nano ~/.zshrc
    ```
   
    Copy and paste the provided Zsh code snippet into the file, and save it.

3. **Create a `lain_quotes.txt` File:**

    You should create a `lain_quotes.txt` in your home directory to store quotes for the `display_random_lain_quote` function to use:

    ```bash
    nano ~/lain_quotes.txt
    ```
   
    Add your favorite quotes line by line.

4. **Apply Changes:**

    To apply the new configuration, either restart your terminal or apply the changes with:

    ```bash
    source ~/.zshrc
    ```

## 🔍 Overview of Custom Functions and Aliases

### Functions

- **display_uptime:** Displays the system uptime in seconds with ASCII art.
- **display_kernel:** Displays kernel information with ASCII art.
- **cd:** Change directories and list the content after changing.
- **count_files_and_dirs:** Display the count of files and directories in the current directory.
- **parse_git_branch:** Parses the current Git branch.
- **extract:** Extracts compressed files (supports multiple formats).
- **weather:** Fetches and displays weather information for the specified (or default) city.
  
### Aliases

- **l, ls, l., la, ll, ll., cp, ln, mv, rm:** Various aliases mainly for file navigation and manipulation.

### Banner and Prompt Customizations

- **generate_banner:** Generates an ASCII art banner upon terminal startup.
- **display_random_lain_quote:** Displays a random quote from "lain_quotes.txt".
- **Custom Prompt:** A uniquely styled and colored command prompt.

## 💻 Usage

With the new Zsh configuration, your terminal should now display a custom ASCII art banner and quote upon startup, along with a stylish command prompt. Utilize the custom functions and aliases for an enhanced terminal experience.

## 📜 License

This project is open source. Feel free to modify and distribute your version, crediting the original creator if possible.

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! Start by forking the project, create a new branch for your features, and make sure to add/test your changes before submitting a pull request.

---

**Note:** Ensure to adapt instructions for the particular operating system and package manager you're using. The instructions above are crafted for Debian-based systems using `apt` package manager.

With this README, users should be able to set up the provided Zsh configuration easily and understand the functionalities it offers.
