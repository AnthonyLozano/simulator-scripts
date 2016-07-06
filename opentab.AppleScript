#!/usr/bin/osascript

-- usage: opentab.AookeScript windowID command Opens a new iterm2 tab in window with id windowID and runs command.

on run argv
	set window_id to item 1 of argv
	set command_string to item 2 of argv as string
	activate application "iTerm"
	tell application "iTerm2"
	 	repeat with aWindow in windows
		  	if ((id of aWindow as string) is equal to window_id as string) then
		  		tell aWindow
		  			set newTab to (create tab with default profile)
		  			tell current session of newTab
		  				select
			  			write text command_string
		  			end tell
		  		end tell
		  	end if
	  	end repeat
	end tell
end run
