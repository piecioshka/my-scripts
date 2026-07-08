Output demo/disk-cleanup.gif

Require disk-cleanup

Set Shell "bash"
Set Framerate 60
Set FontSize 12
Set Width 800
Set Height 560
Set Padding 20
Set Margin 5
Set MarginFill "#212830"
Set BorderRadius 10

Type "# dry-run by default — reports reclaimable space, deletes nothing" Sleep 200ms Enter
Wait Sleep 800ms

Type "disk-cleanup --group pkg" Sleep 500ms Enter
Wait Sleep 2500ms

Enter Type "# .next build caches across all projects" Sleep 200ms Enter Enter
Wait Sleep 800ms

Type "disk-cleanup --group next" Sleep 500ms Enter
Wait Sleep 2500ms

Sleep 3s
