set command to "defaults read com.apple.finder CreateDesktop"
try
	set status to do shell script command
on error
	set status to "1"
end try

if status is "0" then
	do shell script "defaults delete com.apple.finder CreateDesktop;killall Finder"
else
	do shell script "defaults write com.apple.finder CreateDesktop -bool FALSE;killall Finder"
end if
