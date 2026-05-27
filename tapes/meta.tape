# nfx meta — Claude-Code-style power user commands
Output ../gifs/nfx-meta.gif

Set Shell "zsh"
Set FontSize 13
Set Width 1500
Set Height 1100
Set Theme { "name": "nfx", "black": "#06050c", "red": "#ff5a5a", "green": "#64e682", "yellow": "#ffc83c", "blue": "#64b4ff", "purple": "#a767de", "cyan": "#c090eb", "white": "#e6dcf5", "brightBlack": "#6a6188", "brightRed": "#ff6496", "brightGreen": "#6fe88a", "brightYellow": "#ffb43c", "brightBlue": "#64b4ff", "brightPurple": "#c090eb", "brightCyan": "#c090eb", "brightWhite": "#f4f0ff", "background": "#06050c", "foreground": "#cdc5e4", "cursor": "#c090eb" }
Set Padding 24
Set TypingSpeed 50ms

Hide
Type "cd $(mktemp -d) && git init -q && touch .gitignore" Enter
Sleep 200ms
Type "clear" Enter
Sleep 200ms
Show

Type "nfx init"
Sleep 500ms
Enter
Sleep 2s

Type "nfx config"
Sleep 500ms
Enter
Sleep 3s

Type "nfx config set ncbiRateLimit 10 --scope local"
Sleep 500ms
Enter
Sleep 1.5s

Type "nfx doctor"
Sleep 500ms
Enter
Sleep 10s
