# Bring Chrome window with a specific profile to the front

set myProfile to "Profile Name"
tell application "System Events" to tell process "Google Chrome"
	set frontmost to true
	click menu item myProfile of menu 1 of menu bar item "Profiles" of menu bar 1
end tell
