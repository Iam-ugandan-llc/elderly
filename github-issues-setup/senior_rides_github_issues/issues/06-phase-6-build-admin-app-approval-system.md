# Phase 6: Build Admin App approval system

## Deliverable

Admin App supports approvals:
- Pending riders
- Pending caregivers
- Pending drivers
- Driver document review
- Vehicle review
- Approve/suspend riders
- Approve/suspend caregivers
- Approve/suspend drivers
- Approve/reject documents and vehicles
- Admin action audit logging

## How to test

Using admin account:
- approve rider
- suspend rider
- approve caregiver
- approve driver documents
- approve vehicle
- approve driver
- confirm approved driver can access dashboard
- confirm suspended user is blocked

## Cursor instruction

```text
Phase 6: Build Admin App approval system.

In apps/admin-app, build:
- Admin dashboard
- Pending riders
- Rider detail
- Pending caregivers
- Caregiver detail
- Pending drivers
- Driver application detail
- Driver document review
- Vehicle review
- Suspended users list

Admin actions:
- approve rider
- suspend rider
- approve caregiver
- suspend caregiver
- approve driver document
- reject driver document
- approve vehicle
- reject vehicle
- approve driver
- suspend driver

Every admin action must insert into admin_actions:
- admin_id
- action_type
- target_table
- target_id
- notes
- created_at

Rules:
- only admins can access admin app
- driver cannot become approved until required documents and vehicle are approved
- suspended users cannot use normal app features

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
