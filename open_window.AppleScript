#!/usr/bin/osascript

on run
	activate application "iTerm"
	tell application "iTerm2"
	  set newWindow to (create window with default profile)
	  return id of newWindow
	end tell
end run
