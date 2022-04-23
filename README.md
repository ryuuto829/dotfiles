![powershell screenshot](./_images/screenshot-1.png)

# Dmytro's dotfiles

## Contents

- Shell setup (for Windows)
- How to use

## Shell setup (for Windows)

- [PowerShell](https://github.com/PowerShell/PowerShell) - A command-line shell (and an associated scripting language)
- [Oh My Posh](https://ohmyposh.dev/) - Prompt theme engine
- [Terminal Icons](https://github.com/devblackops/Terminal-Icons) - Folder and file icons
- [Nerd fonts](https://www.nerdfonts.com/#home) - Powerline-patched fonts. I'm using `Hack NF`
- [z](https://github.com/badmotorfinger/z) - Directory jumper (lets you quickly navigate the file system based on your `cd` command history)

## How to use

1. Install [PowerShell](https://github.com/powershell/powershell)
2. Change the default shell to PowerShell
3. Install all windows compatible `.ttf` files of `Hack NF` (Hack) from patched [Nerd fonts](https://github.com/ryanoasis/nerd-fonts/releases)
4. Configure Windows Terminal

   - Settings -> Appearance -> Show acrylic in tab row (requires relaunch)
   - Change the terminal background color in `settings.json`

   ```json
   {
     ...
       "schemes":
       [
       ...
           {
               "background": "#001B26", // change this
               "black": "#282C34",
               "blue": "#61AFEF",
               "brightBlack": "#5A6374",
               "brightBlue": "#61AFEF",
               "brightCyan": "#56B6C2",
               "brightGreen": "#98C379",
               "brightPurple": "#C678DD",
               "brightRed": "#E06C75",
               "brightWhite": "#DCDFE4",
               "brightYellow": "#E5C07B",
               "cursorColor": "#FFFFFF",
               "cyan": "#56B6C2",
               "foreground": "#DCDFE4",
               "green": "#98C379",
               "name": "One Half Dark (modded)", // rename this
               "purple": "#C678DD",
               "red": "#E06C75",
               "selectionBackground": "#FFFFFF",
               "white": "#DCDFE4",
               "yellow": "#E5C07B"
           },
       ...
       ],
       "useAcrylicInTabRow": true
   }
   ```

   - Settings -> Defaults -> Appearance -> Color scheme = One Half Dark (modded)
   - Settings -> Defaults -> Appearance -> Font face = Hack NF
   - Settings -> Defaults -> Appearance -> Background opacity = 50%

5. Install [Oh My Posh](https://ohmyposh.dev/)

   - Use custom theme using `powershell/rykhlyk.omp.json` configuration file

6. Install [Terminal Icons](https://github.com/devblackops/Terminal-Icons)
7. Install [z](https://github.com/badmotorfinger/z)
8. Update the profile using `powershell/Microsoft.PowerShell_profile.ps1`

---

Inspired by [Takuya Matsuyama's dotfiles](https://github.com/craftzdog/dotfiles-public) and his [guide](https://www.youtube.com/watch?v=5-aK2_WwrmM&t=305s&ab_channel=devaslife)
