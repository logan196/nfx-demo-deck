# nfx velocity pancreas — RNA velocity on the Bastidas-Ponce et al. 2019
# murine pancreatic endocrinogenesis dataset (the canonical scVelo demo)
Output ../gifs/nfx-velocity.gif

Set Shell "zsh"
Set FontSize 14
Set Width 1400
Set Height 900
Set Theme { "name": "nfx", "black": "#06050c", "red": "#ff5a5a", "green": "#64e682", "yellow": "#ffc83c", "blue": "#64b4ff", "purple": "#a767de", "cyan": "#c090eb", "white": "#e6dcf5", "brightBlack": "#6a6188", "brightRed": "#ff6496", "brightGreen": "#6fe88a", "brightYellow": "#ffb43c", "brightBlue": "#64b4ff", "brightPurple": "#c090eb", "brightCyan": "#c090eb", "brightWhite": "#f4f0ff", "background": "#06050c", "foreground": "#cdc5e4", "cursor": "#c090eb" }
Set Padding 28
Set TypingSpeed 50ms

Hide
Type "alias nfx='python /Users/loganbeharry_novaflow/experiments/nfx-flow-mvp/scripts/nfx_velocity_demo.py '" Enter
Sleep 200ms
Type "cd /Users/loganbeharry_novaflow/experiments/nfx-flow-mvp" Enter
Sleep 100ms
Type "clear" Enter
Sleep 200ms
Show

Type "nfx velocity pancreas --mode deterministic --plot stream"
Sleep 600ms
Enter
Sleep 18s
