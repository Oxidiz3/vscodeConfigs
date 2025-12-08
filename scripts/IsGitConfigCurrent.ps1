git fetch origin main 2>$null
$behind, $ahead = (git rev-list --left-right --count origin/main...HEAD).Split()

if ($behind -gt 0) {
    Write-Output "Your repo is behind by $behind commits!"
} 
if ($ahead -gt 0) {
    Write-Output "Your repo is ahead by $ahead commits!"
}

# Alert if there are uncommitted changes in the working tree
$dirty = git status --porcelain 2>$null
if ($dirty) {
    Write-Output "You have uncommitted changes in your working directory!"
}