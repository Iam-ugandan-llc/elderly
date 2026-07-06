# Phase 7: Build dispatch and ride assignment

## Deliverable

Admin can operate dispatch:
- See submitted ride requests
- Approve ride requests
- See available approved drivers
- Assign driver
- Reassign driver
- Cancel ride
- View ride details and timeline

Driver can:
- See assigned rides
- Accept/decline ride
- View details
- Call rider/caregiver/admin

Rider/caregiver can:
- See assigned driver and vehicle
- See ride status

## How to test

Full flow:
1. Rider requests ride
2. Admin approves request
3. Admin assigns approved driver
4. Driver sees assigned ride
5. Driver accepts ride
6. Rider sees driver and vehicle info
7. Admin sees ride as accepted

## Cursor instruction

```text
Phase 7: Build dispatch and ride assignment.

Admin App:
- view submitted ride requests
- approve ride request
- view approved drivers and availability
- assign driver to ride
- reassign driver
- cancel ride
- view ride detail
- view ride timeline

Driver App:
- assigned rides list
- ride detail screen
- accept ride
- decline ride with reason
- call rider/caregiver/admin buttons

Rider App:
- ride detail shows assigned driver
- ride detail shows vehicle info
- ride detail shows status
- call admin button

Rules:
- only approved drivers can be assigned
- only admins can assign or reassign
- driver can only see assigned rides
- accepting a ride creates ride_event
- declining a ride creates ride_event and notifies admin
- assigning a driver changes ride_request status to assigned and creates a ride row

Do not build live tracking yet.
Do not build maps yet.

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
