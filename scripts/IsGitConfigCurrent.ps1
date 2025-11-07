$behind = git rev-list --count HEAD..@ { u } 2>$null

if ($behind -gt 0) {
    Write-Output "Your repo is behind by $behind commits!"
}