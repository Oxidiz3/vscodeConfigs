git fetch origin main2>$null
$behind, $ahead = (git rev-list --left-right --count origin/main...HEAD).Split()

if ($behind -gt 0) {
    Write-Output "Your repo is behind by $behind commits!"
} 
if ($ahead -gt 0) {
    Write-Output "Your repo is ahead by $ahead commits!"
}