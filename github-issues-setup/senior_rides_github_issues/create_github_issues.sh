#!/usr/bin/env bash
set -euo pipefail

# Usage: ./create_github_issues.sh OWNER/REPO
REPO="${1:-}"
if [ -z "$REPO" ]; then
  echo "Usage: ./create_github_issues.sh OWNER/REPO"
  exit 1
fi

echo "Creating labels in $REPO..."
gh label create "phase" --repo "$REPO" --color "1D76DB" --description "Build phase / milestone issue" --force >/dev/null || true
gh label create "app:rider" --repo "$REPO" --color "A2EEEF" --description "Rider app work" --force >/dev/null || true
gh label create "app:driver" --repo "$REPO" --color "0E8A16" --description "Driver app work" --force >/dev/null || true
gh label create "app:admin" --repo "$REPO" --color "5319E7" --description "Admin app work" --force >/dev/null || true
gh label create "backend:supabase" --repo "$REPO" --color "7057FF" --description "Supabase database, auth, storage, RLS" --force >/dev/null || true
gh label create "feature" --repo "$REPO" --color "84B6EB" --description "New feature" --force >/dev/null || true
gh label create "security" --repo "$REPO" --color "D73A4A" --description "Security, permissions, privacy, RLS" --force >/dev/null || true
gh label create "location" --repo "$REPO" --color "FBCA04" --description "Maps, GPS, foreground/background tracking" --force >/dev/null || true
gh label create "notifications" --repo "$REPO" --color "F9D0C4" --description "Push and in-app notifications" --force >/dev/null || true
gh label create "safety" --repo "$REPO" --color "B60205" --description "Safety, incident, SOS, senior protection" --force >/dev/null || true
gh label create "reports" --repo "$REPO" --color "006B75" --description "Reports, exports, grant data" --force >/dev/null || true
gh label create "production" --repo "$REPO" --color "0052CC" --description "Production build and app store readiness" --force >/dev/null || true
gh label create "qa" --repo "$REPO" --color "D4C5F9" --description "Testing and quality assurance" --force >/dev/null || true
gh label create "priority:high" --repo "$REPO" --color "B60205" --description "High priority" --force >/dev/null || true

echo "Creating milestones..."
gh api --method POST "repos/$REPO/milestones" -f title="Phase 1 - Project Foundation" >/dev/null 2>&1 || true
gh api --method POST "repos/$REPO/milestones" -f title="Phase 2 - Supabase Database and Security" >/dev/null 2>&1 || true
gh api --method POST "repos/$REPO/milestones" -f title="Phase 3 - Authentication and Role Routing" >/dev/null 2>&1 || true
gh api --method POST "repos/$REPO/milestones" -f title="Phase 4 - Rider App Core" >/dev/null 2>&1 || true
gh api --method POST "repos/$REPO/milestones" -f title="Phase 5 - Driver App Onboarding" >/dev/null 2>&1 || true
gh api --method POST "repos/$REPO/milestones" -f title="Phase 6 - Admin App Approvals" >/dev/null 2>&1 || true
gh api --method POST "repos/$REPO/milestones" -f title="Phase 7 - Dispatch and Ride Assignment" >/dev/null 2>&1 || true
gh api --method POST "repos/$REPO/milestones" -f title="Phase 8 - Ride Lifecycle" >/dev/null 2>&1 || true
gh api --method POST "repos/$REPO/milestones" -f title="Phase 9 - Maps and Live Tracking" >/dev/null 2>&1 || true
gh api --method POST "repos/$REPO/milestones" -f title="Phase 10 - Notifications and Communication" >/dev/null 2>&1 || true
gh api --method POST "repos/$REPO/milestones" -f title="Phase 11 - Incident Reports and Safety" >/dev/null 2>&1 || true
gh api --method POST "repos/$REPO/milestones" -f title="Phase 12 - Donations and Nonprofit Reporting" >/dev/null 2>&1 || true
gh api --method POST "repos/$REPO/milestones" -f title="Phase 13 - Production Polish and App Store Readiness" >/dev/null 2>&1 || true
gh api --method POST "repos/$REPO/milestones" -f title="Phase 14 - Final End-to-End Testing" >/dev/null 2>&1 || true
gh api --method POST "repos/$REPO/milestones" -f title="Phase 15 - App Store Submission Package" >/dev/null 2>&1 || true

echo "Creating issues..."
gh issue create --repo "$REPO" --title "Phase 1: Create production monorepo foundation" --body-file "issues/01-phase-1-create-production-monorepo-foundation.md" --label "phase,feature,production,priority:high" --milestone "Phase 1 - Project Foundation"
gh issue create --repo "$REPO" --title "Phase 2: Create Supabase database schema and RLS" --body-file "issues/02-phase-2-create-supabase-database-schema-and-rls.md" --label "phase,backend:supabase,security,priority:high" --milestone "Phase 2 - Supabase Database and Security"
gh issue create --repo "$REPO" --title "Phase 3: Implement Supabase authentication and role routing" --body-file "issues/03-phase-3-implement-supabase-authentication-and-role-routing.md" --label "phase,backend:supabase,security,feature,priority:high" --milestone "Phase 3 - Authentication and Role Routing"
gh issue create --repo "$REPO" --title "Phase 4: Build Rider App core ride request features" --body-file "issues/04-phase-4-build-rider-app-core-ride-request-features.md" --label "phase,app:rider,feature,priority:high" --milestone "Phase 4 - Rider App Core"
gh issue create --repo "$REPO" --title "Phase 5: Build Driver App volunteer onboarding" --body-file "issues/05-phase-5-build-driver-app-volunteer-onboarding.md" --label "phase,app:driver,backend:supabase,feature,priority:high" --milestone "Phase 5 - Driver App Onboarding"
gh issue create --repo "$REPO" --title "Phase 6: Build Admin App approval system" --body-file "issues/06-phase-6-build-admin-app-approval-system.md" --label "phase,app:admin,security,feature,priority:high" --milestone "Phase 6 - Admin App Approvals"
gh issue create --repo "$REPO" --title "Phase 7: Build dispatch and ride assignment" --body-file "issues/07-phase-7-build-dispatch-and-ride-assignment.md" --label "phase,app:admin,app:driver,app:rider,feature,priority:high" --milestone "Phase 7 - Dispatch and Ride Assignment"
gh issue create --repo "$REPO" --title "Phase 8: Implement ride lifecycle and status timeline" --body-file "issues/08-phase-8-implement-ride-lifecycle-and-status-timeline.md" --label "phase,app:driver,app:admin,app:rider,feature,priority:high" --milestone "Phase 8 - Ride Lifecycle"
gh issue create --repo "$REPO" --title "Phase 9: Implement maps and live active-ride tracking" --body-file "issues/09-phase-9-implement-maps-and-live-active-ride-tracking.md" --label "phase,location,app:driver,app:rider,app:admin,priority:high" --milestone "Phase 9 - Maps and Live Tracking"
gh issue create --repo "$REPO" --title "Phase 10: Implement notifications and communication" --body-file "issues/10-phase-10-implement-notifications-and-communication.md" --label "phase,notifications,app:rider,app:driver,app:admin,feature" --milestone "Phase 10 - Notifications and Communication"
gh issue create --repo "$REPO" --title "Phase 11: Build incident reports and safety tools" --body-file "issues/11-phase-11-build-incident-reports-and-safety-tools.md" --label "phase,safety,app:driver,app:rider,app:admin,priority:high" --milestone "Phase 11 - Incident Reports and Safety"
gh issue create --repo "$REPO" --title "Phase 12: Build optional donations and nonprofit reports" --body-file "issues/12-phase-12-build-optional-donations-and-nonprofit-reports.md" --label "phase,reports,app:rider,app:driver,app:admin,feature" --milestone "Phase 12 - Donations and Nonprofit Reporting"
gh issue create --repo "$REPO" --title "Phase 13: Production polish and app-store readiness" --body-file "issues/13-phase-13-production-polish-and-app-store-readiness.md" --label "phase,production,security,qa,priority:high" --milestone "Phase 13 - Production Polish and App Store Readiness"
gh issue create --repo "$REPO" --title "Phase 14: Final QA and end-to-end release candidate testing" --body-file "issues/14-phase-14-final-qa-and-end-to-end-release-candidate-testing.md" --label "phase,qa,production,priority:high" --milestone "Phase 14 - Final End-to-End Testing"
gh issue create --repo "$REPO" --title "Phase 15: Prepare app store submission package" --body-file "issues/15-phase-15-prepare-app-store-submission-package.md" --label "phase,production,qa" --milestone "Phase 15 - App Store Submission Package"

echo "Done. Created phase issues for Senior Rides."