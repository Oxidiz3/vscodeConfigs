git fetch origin 2>$null
$behind = (git rev-list --left-right --count origin/main...HEAD).Split()[0]

if ($behind -gt 0) {
    Write-Output "Your repo is behind by $behind commits!"
}