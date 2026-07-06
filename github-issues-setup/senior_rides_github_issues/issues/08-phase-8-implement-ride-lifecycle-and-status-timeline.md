# Phase 8: Implement ride lifecycle and status timeline

## Deliverable

Driver can run a full ride lifecycle:
- accepted
- driver_on_way
- arrived
- rider_picked_up
- in_progress
- dropped_off
- completed
- canceled

Each status creates ride_events. Admin and rider see updates.

## How to test

Complete a ride:
1. Driver accepts
2. Driver taps On my way
3. Driver taps Arrived
4. Driver taps Rider picked up
5. Driver taps Dropped off
6. Driver taps Completed

Confirm:
- Rider sees each status
- Admin sees each status
- ride_events table has full timeline
- completed ride appears in history
- volunteer hours are calculated

## Cursor instruction

```text
Phase 8: Implement ride lifecycle.

Driver App:
- ride controls screen
- status buttons:
  - accepted
  - driver_on_way
  - arrived
  - rider_picked_up
  - in_progress
  - dropped_off
  - completed
  - canceled
- require confirmation before canceling or completing
- allow driver notes

Rider App:
- active ride status screen
- clear status labels
- driver contact button
- admin help button

Admin App:
- active ride detail
- ride timeline
- status monitoring

Rules:
- status changes must follow valid order
- each status change inserts into ride_events
- completed ride stores completed_at
- volunteer hours calculated from accepted_at to completed_at or started_at to completed_at
- canceled rides require reason

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
