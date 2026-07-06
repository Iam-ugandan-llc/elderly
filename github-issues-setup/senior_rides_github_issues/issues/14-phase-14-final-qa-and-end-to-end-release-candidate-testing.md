# Phase 14: Final QA and end-to-end release candidate testing

## Deliverable

Release candidate testing for all 3 apps:
- rider full flow
- driver full flow
- admin full flow
- live tracking
- incident reports
- donations
- reports
- access control
- bad internet/offline edge cases

## How to test

Use 3 phones:
- Rider App
- Driver App
- Admin App

Test:
- one-way ride
- round-trip ride
- recurring ride
- driver decline
- admin reassignment
- ride cancellation
- incident report
- emergency/SOS
- completed ride report
- donation link
- background location
- suspended driver
- pending driver
- unauthorized access

## Cursor instruction

```text
Phase 14: Final QA and release candidate testing.

Create an end-to-end test checklist covering:

Rider App:
- signup
- profile
- caregiver booking
- one-way ride
- round-trip ride
- recurring ride
- active ride tracking
- cancellation
- donation
- ride history

Driver App:
- signup
- application
- document upload
- vehicle setup
- availability
- assigned ride
- accept ride
- decline ride
- ride status lifecycle
- live location
- background location
- incident report
- volunteer hours

Admin App:
- approve users
- approve drivers
- approve documents
- view ride requests
- assign driver
- reassign driver
- cancel ride
- monitor active ride
- review incident
- export reports
- suspend user

Fix all bugs found.
Do not add new features during this phase.
Update APP_STATUS.md with release candidate status.
```

## Acceptance checklist

- [ ] Deliverable completed
- [ ] Manual tests passed
- [ ] TypeScript passes
- [ ] No broken navigation
- [ ] Supabase queries follow RLS rules where applicable
- [ ] APP_STATUS.md updated
- [ ] Ready for commit
