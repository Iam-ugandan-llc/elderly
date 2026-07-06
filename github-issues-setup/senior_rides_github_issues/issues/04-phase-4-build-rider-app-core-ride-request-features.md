# Phase 4: Build Rider App core ride request features

## Deliverable

Rider App supports:
- Rider profile
- Emergency contact
- Mobility notes
- One-way ride requests
- Round-trip ride requests
- Recurring ride requests
- Ride request status
- Cancel ride request
- Ride history
- Caregiver booking for linked senior

## How to test

Test flows:
- senior creates own ride request
- caregiver creates ride for senior
- rider requests round trip
- rider requests recurring church ride
- rider cancels before assignment
- rider cannot see another rider's request

## Cursor instruction

```text
Phase 4: Build Rider App core features.

In apps/rider-app, build:
- Rider dashboard
- Create rider profile
- Emergency contact
- Mobility notes
- Request ride
- Request round trip
- Request recurring ride
- My ride requests
- Ride request details
- Cancel ride request
- Ride history

Ride request form fields:
- rider
- pickup address
- pickup latitude/longitude optional for now
- dropoff address
- dropoff latitude/longitude optional for now
- ride purpose
- requested pickup date/time
- one-way or round trip
- return pickup time
- recurring ride option
- mobility notes
- caregiver notes

Rules:
- submitted ride requests start with status submitted
- rider/caregiver can cancel only before ride is active
- caregiver can request rides only for linked riders
- use Supabase RLS-safe queries

Do not build maps yet.
Do not build live tracking yet.
Do not build donations yet.

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
