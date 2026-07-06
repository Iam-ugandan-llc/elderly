# Pushes local main to Iam-ugandan-llc/elderly and creates phase issues.
# Prerequisite: gh auth login (must be logged in as kotaki-1 with org access)

$ErrorActionPreference = "Stop"
$gh = "C:\Program Files\GitHub CLI\gh.exe"
$repo = "Iam-ugandan-llc/elderly"
$root = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)

Set-Location $root

Write-Host "Checking GitHub auth..."
& $gh auth status

Write-Host "Creating org repo and pushing..."
& $gh repo create $repo --public --description "Nonprofit senior transportation app (Senior Rides)" --source . --remote origin --push

Write-Host "Creating labels, milestones, and issues..."
& "$root\github-issues-setup\senior_rides_github_issues\create_github_issues.ps1" $repo

Write-Host "Done: https://github.com/$repo"
