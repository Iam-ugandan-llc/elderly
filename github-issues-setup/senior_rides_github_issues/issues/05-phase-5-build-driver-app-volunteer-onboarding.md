# Phase 5: Build Driver App volunteer onboarding

## Deliverable

Driver App supports volunteer onboarding:
- Driver application
- License upload
- Insurance upload
- Vehicle details
- Vehicle photos
- Weekly availability
- Approval status
- Training/requirements checklist

## How to test

Create driver account and confirm:
- application submits
- license upload works
- insurance upload works
- vehicle saves
- availability saves
- pending driver cannot see rides
- driver sees waiting for approval screen

## Cursor instruction

```text
Phase 5: Build Driver App onboarding.

In apps/driver-app, build:
- Driver onboarding home
- Driver application form
- Upload driver license
- Upload insurance document
- Add vehicle
- Add vehicle photos
- Set availability
- Driver approval status
- Driver requirements checklist

Driver application fields:
- legal name
- phone
- date of birth
- license number
- license state
- license expiration
- insurance provider
- insurance expiration
- vehicle make/model/year/color
- plate number
- service area
- availability

Use Supabase Storage for documents.
Save document metadata in driver_documents.

Rules:
- driver status starts as pending
- pending drivers cannot view or accept rides
- approved drivers can later receive assignments
- expired documents should show warning

Do not build ride acceptance yet.
Do not build location tracking yet.

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
