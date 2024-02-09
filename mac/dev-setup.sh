#! /bin/bash
mkdir -p $HOME/Library/KeyBindings
echo '{
  "\UF729"  = "moveToBeginningOfLine:";				// home
  "\UF72B"  = "moveToEndOfLine:";				// end

  "$\UF729" = "moveToBeginningOfLineAndModifySelection:";	// shift-home
  "$\UF72B" = "moveToEndOfLineAndModifySelection:";		// shift-end

  "^\UF729" = "moveToBeginningOfDocument:";			//ctrl-home
  "^\UF72B" = "moveToEndOfDocument:";				//ctrl-end

  "^$\UF729" = "moveToBeginningOfDocumentAndModifySelection:";	//ctrl-shift-home
  "^$\UF72B" = "moveToEndOfDocumentAndModifySelection:";	//ctrl-shift-end

  "^c" = "copy:";						//ctrl-c
  "^v" = "paste:";						//ctrl-v
  "^x" = "cut:";						//ctrl-x

  "^z" = "undo:";						//ctrl-z
  "^$z" = "redo:";						//ctrl-shift-z

  "^a" = "selectAll:";						//ctrl-a
}' > $HOME/Library/KeyBindings/DefaultKeyBinding.dict

brew install --cask flycut

# FINDER #
# Show all filename extensions
sudo defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# Show path bar
sudo defaults write com.apple.finder ShowPathbar -bool true
# Show status bar
sudo defaults write com.apple.finder ShowStatusBar -bool true
# Restart finder to apply settings
killall Finder
