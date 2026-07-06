# Phase 9: Implement maps and live active-ride tracking

## Deliverable

Production tracking:
- Driver foreground/background location during active ride only
- Rider sees driver location during active ride
- Admin sees active rides on map
- Tracking stops immediately when ride is completed/canceled

## How to test

Test on physical iPhone and Android:
- driver starts ride with app open
- rider sees location
- admin sees location
- driver locks phone during active ride
- location continues updating
- driver completes ride
- tracking stops
- rider no longer sees live location after completion

## Cursor instruction

```text
Phase 9: Implement production maps and live ride tracking.

Use:
- expo-location
- expo-task-manager
- Supabase Realtime
- ride_locations table

Driver App:
- request foreground location permission
- request background location permission when needed
- start location updates only when active ride starts
- insert location points into ride_locations
- continue updates during active trip in production/native builds
- stop location updates immediately when ride is completed or canceled
- show clear location tracking indicator

Rider App:
- active ride map
- subscribe to latest ride_locations using Supabase Realtime
- show driver marker
- show driver status
- hide map after ride is completed

Admin App:
- active rides map
- show all active ride driver markers
- ride detail map
- latest location timestamp

Rules:
- do not track drivers outside active rides
- only assigned driver can insert locations for that ride
- rider/caregiver can only view location for their own active ride
- admin can view all active ride locations
- location permission wording must explain nonprofit ride safety purpose

Update app.config.ts permissions for iOS and Android.
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
