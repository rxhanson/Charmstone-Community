set curVolume to get volume settings
if output muted of curVolume is false then
	set volume with output muted
else
	set volume without output muted
end if
