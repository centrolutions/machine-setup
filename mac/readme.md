# Instructions
Run the dev-setup.sh script as an administrator to create default key bindings that closely match Windows and change some settings I find useful on MacOS.

# Key Binding Reference
I have used Windows for a long time and use a Windows keyboard with my Mac, so I've tried to copy Windows keyboard shortcuts as closely as I can so I can be as productive on Mac as I am on Windows. Below is a reference for the contents of DefaultKeyBindings.dict.

## Key Modifiers
|Character|Mac Key|Windows Key|
|---------|:-----:|:----------|
|^        |Control|Ctrl       |
|$        |Shift  |Shift      |
|~        |Option |Alt        |
|@        |Command|Win        |
|#        |Num Pad|Num Pad    |

## Non-printable key codes
|Key           |Code     |
|--------------|:-------:|
|Backspace     | \U0008  |
|Tab           | \U0009  |
|Escape        | \U001B  |
|Enter         | \U000A  |
|Up Arrow      | \UF700  |
|Down Arrow    | \UF701  |
|Left Arrow    | \UF702  |
|Right Arrow   | \UF703  |
|F1            | \UF704  |
|F2            | \UF705  |
|F3            | \UF706  |
|F4            | \UF707  |
|F5            | \UF708  |
|F6            | \UF709  |
|F7            | \UF70A  |
|F8            | \UF70B  |
|F9            | \UF70C  |
|F10           | \UF70D  |
|F11           | \UF70E  |
|F12           | \UF70F  |
|F13           | \UF710  |
|F14           | \UF711  |
|F15           | \UF712  |
|F16           | \UF713  |
|F17           | \UF714  |
|F18           | \UF715  |
|F19           | \UF716  |
|F20           | \UF717  |
|Insert        | \UF727  |
|Delete        | \UF728  |
|Home          | \UF729  |
|End           | \UF72B  |
|Page Up       | \UF72C  |
|Page Down     | \UF72D  |
|Print Screen  | \UF72E  |
|Scroll Lock   | \UF72F  |
|Pause         | \UF730  |
|Sys Req       | \UF731  |
|Break         | \UF732  |
|Menu          | \UF735  |
|Help          | \UF746  |

## Commands Available
* capitalizeWord:
* centerSelectionInVisibleArea:
* deleteBackward:
* deleteBackwardByDecomposingPreviousCharacter:
* deleteForward:
* deleteToBeginningOfLine:
* deleteToBeginningOfParagraph:
* deleteToEndOfLine:
* deleteToEndOfParagraph:
* deleteToMark:
* deleteWordBackward:
* deleteWordForward:
* insertBacktab:
* insertDoubleQuoteIgnoringSubstitution:
* insertNewline:
* insertNewlineIgnoringFieldEditor:
* insertSingleQuoteIgnoringSubstitution:
* insertTab:
* insertTabIgnoringFieldEditor:
* insertText:
* lowercaseWord:
* moveBackward:
* moveBackwardAndModifySelection:
* moveDown:
* moveDownAndModifySelection:
* moveForward:
* moveForwardAndModifySelection:
* moveLeft:
* moveLeftAndModifySelection:
* moveParagraphBackwardAndModifySelection:
* moveParagraphForwardAndModifySelection:
* moveRight:
* moveRightAndModifySelection:
* moveToBeginningOfDocument:
* moveToBeginningOfDocumentAndModifySelection:
* moveToBeginningOfLine:
* moveToBeginningOfLineAndModifySelection:
* moveToBeginningOfParagraph:
* moveToBeginningOfParagraphAndModifySelection:
* moveToEndOfDocument:
* moveToEndOfDocumentAndModifySelection:
* moveToEndOfLine:
* moveToEndOfLineAndModifySelection:
* moveToEndOfParagraph:
* moveToEndOfParagraphAndModifySelection:
* moveToLeftEndOfLine:
* moveToLeftEndOfLineAndModifySelection:
* moveToRightEndOfLine:
* moveToRightEndOfLineAndModifySelection:
* moveUp:
* moveUpAndModifySelection:
* moveWordBackward:
* moveWordBackwardAndModifySelection:
* moveWordForward:
* moveWordForwardAndModifySelection:
* moveWordLeft:
* moveWordLeftAndModifySelection:
* moveWordRight:
* moveWordRightAndModifySelection:
* pageDown:
* pageDownAndModifySelection:
* pageUp:
* pageUpAndModifySelection:
* scrollLineDown:
* scrollLineUp:
* scrollPageDown:
* scrollPageUp:
* scrollToBeginningOfDocument:
* scrollToEndOfDocument:
* selectAll:
* selectLine:
* selectParagraph:
* selectToMark:
* selectWord:
* setMark:
* swapWithMark:
* transpose:
* uppercaseWord:
* yank:
* copy:
* cut:
* delete:
* paste:
* pasteAsPlainText:
* redo:
* undo:
* yankAndSelect:

## Examples
```
{

  "\UF729"  = "moveToBeginningOfLine:";		// home
  "\UF72B"  = "moveToEndOfLine:";	    	// end

  "$\UF729" = "moveToBeginningOfLineAndModifySelection:";	// shift-home
  "$\UF72B" = "moveToEndOfLineAndModifySelection:";	        // shift-end

  "^\UF729" = "moveToBeginningOfDocument:";			//ctrl-home
  "^\UF72B" = "moveToEndOfDocument:";				//ctrl-end

  "^$\UF729" = "moveToBeginningOfDocumentAndModifySelection:";	//ctrl-shift-home
  "^$\UF72B" = "moveToEndOfDocumentAndModifySelection:";        //ctrl-shift-end

  "^c" = "copy:";	//ctrl-c
  "^v" = "paste:";	//ctrl-v
  "^x" = "cut:";	//ctrl-x

  "^z" = "undo:";	//ctrl-z
  "^$z" = "redo:";	//ctrl-shift-z

  "^a" = "selectAll:";	//ctrl-a
  
  "^$l" = (lowercaseWord:, moveForward:, moveForward:); //multiple things with one key combo
  "^$u" = (uppercaseWord:, moveForward:, moveForward:);
}
```
Want to see the default / system keybindings? Run this command in the terminal:
```
plutil -convert xml1 /System/Library/Frameworks/AppKit.framework/Resources/StandardKeyBinding.dict -o -|pl|grep -v noop:|ruby -pe'$_.gsub!(/[^ -~\n]/){"\\U%04x"%$&.ord}'
```
