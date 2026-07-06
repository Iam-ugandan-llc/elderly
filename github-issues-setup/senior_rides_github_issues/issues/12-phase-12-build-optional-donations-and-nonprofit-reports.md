# Phase 12: Build optional donations and nonprofit reports

## Deliverable

Donation and reporting:
- Optional donation after completed ride
- External donation link from organization settings
- Driver volunteer hours
- Admin reports
- CSV exports
- Grant-ready metrics

## How to test

Complete a ride and confirm:
- donation thank-you screen appears
- donation link opens
- admin can manually record donation
- reports show completed ride
- reports show volunteer hours
- CSV export works

## Cursor instruction

```text
Phase 12: Build optional donations and nonprofit reports.

Rider App:
- after completed ride, show thank-you screen
- show optional donation button
- donation is not required
- ride history shows completed ride

Driver App:
- show completed ride history
- show volunteer hours summary

Admin App:
- reports dashboard
- completed rides report
- volunteer hours report
- donations report
- ride purposes report
- service area report
- export CSV

Donations:
- use external donation link from organization_settings
- allow admin to record offline donation manually
- save donation records in donations table

Rules:
- app must never require payment for a ride
- wording must clearly say donation is optional
- reports must support grant applications

Update APP_STATUS.md.
```

## Acceptance checklist

- [ ] Deliverable completed
- [ ] Manual tests passed
- [ ] TypeScript passes
- [ ] No broken navigation
- [ ] Supabase queries follow RLS rules where applicable
- [ ] APP_STATUS.md updated
- [ ] Ready for commit
