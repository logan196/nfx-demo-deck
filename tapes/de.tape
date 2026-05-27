# nfx de — DESeq2-style differential expression demo
# (scripted with realistic-looking TCGA-BRCA tumor-vs-normal result)
Output ../gifs/nfx-de.gif

Set Shell "zsh"
Set FontSize 14
Set Width 1400
Set Height 900
Set Theme { "name": "nfx", "black": "#06050c", "red": "#ff5a5a", "green": "#64e682", "yellow": "#ffc83c", "blue": "#64b4ff", "purple": "#a767de", "cyan": "#c090eb", "white": "#e6dcf5", "brightBlack": "#6a6188", "brightRed": "#ff6496", "brightGreen": "#6fe88a", "brightYellow": "#ffb43c", "brightBlue": "#64b4ff", "brightPurple": "#c090eb", "brightCyan": "#c090eb", "brightWhite": "#f4f0ff", "background": "#06050c", "foreground": "#cdc5e4", "cursor": "#c090eb" }
Set Padding 28
Set TypingSpeed 50ms

Hide
Type "alias nfx=/Users/loganbeharry_novaflow/experiments/nfx-flow-mvp/scripts/nfx_de_demo.sh" Enter
Sleep 100ms
Type "clear" Enter
Sleep 200ms
Show

Type "nfx de counts_brca.csv meta_brca.csv"
Sleep 600ms
Enter
Sleep 10s
