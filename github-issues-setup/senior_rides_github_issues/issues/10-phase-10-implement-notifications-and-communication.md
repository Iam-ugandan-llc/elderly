# Phase 10: Implement notifications and communication

## Deliverable

Notifications for:
- ride submitted
- ride approved
- driver assigned
- driver accepted
- driver on the way
- driver arrived
- rider picked up
- ride completed
- ride canceled
- driver declined
- incident reported

Communication:
- call rider
- call caregiver
- call driver
- call admin
- SOS button

## How to test

Use 3 devices:
- Rider phone
- Driver phone
- Admin phone

Confirm:
- push token saved
- ride assignment notifies driver
- status update notifies rider/caregiver
- driver decline notifies admin
- SOS/incident notifies admin
- call buttons open dialer

## Cursor instruction

```text
Phase 10: Implement notifications and communication.

Add push notification support.

Create notifications table records for:
- ride submitted
- ride approved
- driver assigned
- driver accepted
- driver on way
- driver arrived
- rider picked up
- ride completed
- ride canceled
- driver declined
- incident reported

Apps:
- store push token for each user/device
- show in-app notifications list
- send push notifications for important ride events
- add call buttons using phone links
- add admin help button
- add driver SOS button

Rules:
- notifications must respect user role
- rider/caregiver only gets notifications about their rides
- driver only gets notifications about assigned rides
- admin gets operational alerts
- SOS creates high-severity incident_report and admin notification

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
