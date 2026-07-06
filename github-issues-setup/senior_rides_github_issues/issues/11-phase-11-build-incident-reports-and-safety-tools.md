# Phase 11: Build incident reports and safety tools

## Deliverable

Incident reporting and safety:
- Driver incident reporting
- Rider post-ride issue reporting
- Admin incident dashboard
- Admin review/escalate/close incident
- Emergency/SOS creates high-severity incident

## How to test

Create incidents:
- low: no-show
- medium: wrong address
- high: unsafe situation
- emergency: accident/medical emergency

Confirm:
- Admin sees incident immediately
- Incident is tied to ride
- Admin can add notes
- Admin can close incident
- High severity is highlighted

## Cursor instruction

```text
Phase 11: Build incident reporting and safety tools.

Driver App:
- incident report screen
- quick incident buttons
- emergency/SOS flow
- attach notes
- attach optional photo
- submit incident

Rider App:
- report issue after ride
- contact admin
- safety information screen

Admin App:
- incident dashboard
- incident detail
- mark reviewed
- add internal notes
- escalate
- close incident
- suspend rider/driver from incident screen

Incident types:
- no_show
- wrong_address
- unsafe_situation
- rider_fall
- medical_concern
- vehicle_problem
- accident
- emergency
- other

Rules:
- emergency incident creates immediate admin notification
- every incident must be tied to ride_id when possible
- incident changes must be logged in admin_actions

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
