# Usage: .\create_github_issues.ps1 OWNER/REPO
# Example: .\create_github_issues.ps1 kotakirobert/senior-rides
param(
    [Parameter(Mandatory = $true, Position = 0)]
    [string]$Repo
)

$ErrorActionPreference = "Stop"

$gh = Get-Command gh -ErrorAction SilentlyContinue
if (-not $gh) {
    $ghPath = "C:\Program Files\GitHub CLI\gh.exe"
    if (Test-Path $ghPath) {
        $gh = $ghPath
    } else {
        throw "GitHub CLI (gh) not found. Install from https://cli.github.com/ then run: gh auth login"
    }
} else {
    $gh = $gh.Source
}

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $scriptDir

Write-Host "Creating labels in $Repo..."
$labels = @(
    @{ name = "phase"; color = "1D76DB"; description = "Build phase / milestone issue" },
    @{ name = "app:rider"; color = "A2EEEF"; description = "Rider app work" },
    @{ name = "app:driver"; color = "0E8A16"; description = "Driver app work" },
    @{ name = "app:admin"; color = "5319E7"; description = "Admin app work" },
    @{ name = "backend:supabase"; color = "7057FF"; description = "Supabase database, auth, storage, RLS" },
    @{ name = "feature"; color = "84B6EB"; description = "New feature" },
    @{ name = "security"; color = "D73A4A"; description = "Security, permissions, privacy, RLS" },
    @{ name = "location"; color = "FBCA04"; description = "Maps, GPS, foreground/background tracking" },
    @{ name = "notifications"; color = "F9D0C4"; description = "Push and in-app notifications" },
    @{ name = "safety"; color = "B60205"; description = "Safety, incident, SOS, senior protection" },
    @{ name = "reports"; color = "006B75"; description = "Reports, exports, grant data" },
    @{ name = "production"; color = "0052CC"; description = "Production build and app store readiness" },
    @{ name = "qa"; color = "D4C5F9"; description = "Testing and quality assurance" },
    @{ name = "priority:high"; color = "B60205"; description = "High priority" }
)

foreach ($label in $labels) {
    & $gh label create $label.name --repo $Repo --color $label.color --description $label.description --force 2>$null
}

Write-Host "Creating milestones..."
$milestones = @(
    "Phase 1 - Project Foundation",
    "Phase 2 - Supabase Database and Security",
    "Phase 3 - Authentication and Role Routing",
    "Phase 4 - Rider App Core",
    "Phase 5 - Driver App Onboarding",
    "Phase 6 - Admin App Approvals",
    "Phase 7 - Dispatch and Ride Assignment",
    "Phase 8 - Ride Lifecycle",
    "Phase 9 - Maps and Live Tracking",
    "Phase 10 - Notifications and Communication",
    "Phase 11 - Incident Reports and Safety",
    "Phase 12 - Donations and Nonprofit Reporting",
    "Phase 13 - Production Polish and App Store Readiness",
    "Phase 14 - Final End-to-End Testing",
    "Phase 15 - App Store Submission Package"
)

foreach ($title in $milestones) {
    & $gh api --method POST "repos/$Repo/milestones" -f "title=$title" 2>$null
}

Write-Host "Creating issues..."
$issues = @(
    @{
        title = "Phase 1: Create production monorepo foundation"
        body = "issues/01-phase-1-create-production-monorepo-foundation.md"
        labels = "phase,feature,production,priority:high"
        milestone = "Phase 1 - Project Foundation"
    },
    @{
        title = "Phase 2: Create Supabase database schema and RLS"
        body = "issues/02-phase-2-create-supabase-database-schema-and-rls.md"
        labels = "phase,backend:supabase,security,priority:high"
        milestone = "Phase 2 - Supabase Database and Security"
    },
    @{
        title = "Phase 3: Implement Supabase authentication and role routing"
        body = "issues/03-phase-3-implement-supabase-authentication-and-role-routing.md"
        labels = "phase,backend:supabase,security,feature,priority:high"
        milestone = "Phase 3 - Authentication and Role Routing"
    },
    @{
        title = "Phase 4: Build Rider App core ride request features"
        body = "issues/04-phase-4-build-rider-app-core-ride-request-features.md"
        labels = "phase,app:rider,feature,priority:high"
        milestone = "Phase 4 - Rider App Core"
    },
    @{
        title = "Phase 5: Build Driver App volunteer onboarding"
        body = "issues/05-phase-5-build-driver-app-volunteer-onboarding.md"
        labels = "phase,app:driver,backend:supabase,feature,priority:high"
        milestone = "Phase 5 - Driver App Onboarding"
    },
    @{
        title = "Phase 6: Build Admin App approval system"
        body = "issues/06-phase-6-build-admin-app-approval-system.md"
        labels = "phase,app:admin,security,feature,priority:high"
        milestone = "Phase 6 - Admin App Approvals"
    },
    @{
        title = "Phase 7: Build dispatch and ride assignment"
        body = "issues/07-phase-7-build-dispatch-and-ride-assignment.md"
        labels = "phase,app:admin,app:driver,app:rider,feature,priority:high"
        milestone = "Phase 7 - Dispatch and Ride Assignment"
    },
    @{
        title = "Phase 8: Implement ride lifecycle and status timeline"
        body = "issues/08-phase-8-implement-ride-lifecycle-and-status-timeline.md"
        labels = "phase,app:driver,app:admin,app:rider,feature,priority:high"
        milestone = "Phase 8 - Ride Lifecycle"
    },
    @{
        title = "Phase 9: Implement maps and live active-ride tracking"
        body = "issues/09-phase-9-implement-maps-and-live-active-ride-tracking.md"
        labels = "phase,location,app:driver,app:rider,app:admin,priority:high"
        milestone = "Phase 9 - Maps and Live Tracking"
    },
    @{
        title = "Phase 10: Implement notifications and communication"
        body = "issues/10-phase-10-implement-notifications-and-communication.md"
        labels = "phase,notifications,app:rider,app:driver,app:admin,feature"
        milestone = "Phase 10 - Notifications and Communication"
    },
    @{
        title = "Phase 11: Build incident reports and safety tools"
        body = "issues/11-phase-11-build-incident-reports-and-safety-tools.md"
        labels = "phase,safety,app:driver,app:rider,app:admin,priority:high"
        milestone = "Phase 11 - Incident Reports and Safety"
    },
    @{
        title = "Phase 12: Build optional donations and nonprofit reports"
        body = "issues/12-phase-12-build-optional-donations-and-nonprofit-reports.md"
        labels = "phase,reports,app:rider,app:driver,app:admin,feature"
        milestone = "Phase 12 - Donations and Nonprofit Reporting"
    },
    @{
        title = "Phase 13: Production polish and app-store readiness"
        body = "issues/13-phase-13-production-polish-and-app-store-readiness.md"
        labels = "phase,production,security,qa,priority:high"
        milestone = "Phase 13 - Production Polish and App Store Readiness"
    },
    @{
        title = "Phase 14: Final QA and end-to-end release candidate testing"
        body = "issues/14-phase-14-final-qa-and-end-to-end-release-candidate-testing.md"
        labels = "phase,qa,production,priority:high"
        milestone = "Phase 14 - Final End-to-End Testing"
    },
    @{
        title = "Phase 15: Prepare app store submission package"
        body = "issues/15-phase-15-prepare-app-store-submission-package.md"
        labels = "phase,production,qa"
        milestone = "Phase 15 - App Store Submission Package"
    }
)

foreach ($issue in $issues) {
    & $gh issue create --repo $Repo --title $issue.title --body-file $issue.body --label $issue.labels --milestone $issue.milestone
}

Write-Host "Done. Created 15 phase issues, 15 milestones, and 14 labels in $Repo."
