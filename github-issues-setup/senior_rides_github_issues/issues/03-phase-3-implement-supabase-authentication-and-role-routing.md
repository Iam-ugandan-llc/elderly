# Phase 3: Implement Supabase authentication and role routing

## Deliverable

All three apps have real authentication:
- Signup
- Login
- Logout
- Forgot password
- Role selection during signup
- Auth session persistence
- Pending approval screen
- Suspended account screen
- Role-based dashboard routing

## How to test

Create test accounts:
- rider@test.com
- caregiver@test.com
- driver@test.com
- admin@test.com

Confirm:
- each user logs in
- each user sees the correct dashboard
- pending users see pending approval screen
- suspended users see blocked screen
- logout works
- session persists after app restart

## Cursor instruction

```text
Phase 3: Implement Supabase authentication and role-based navigation.

Use Supabase Auth in all three apps.

Build:
- signup screen
- login screen
- forgot password screen
- logout
- auth session persistence
- role selection during signup
- pending approval screen
- role-based dashboard routing

Rules:
- rider and caregiver accounts may access rider-app
- driver accounts may access driver-app
- admin accounts may access admin-app
- pending users see pending approval screen
- suspended users see suspended account screen

Use shared Supabase client from packages/shared-supabase.
Use shared TypeScript types from packages/shared-types.

Update APP_STATUS.md with test accounts and Phase 3 completion notes.
```

## Acceptance checklist

- [ ] Deliverable completed
- [ ] Manual tests passed
- [ ] TypeScript passes
- [ ] No broken navigation
- [ ] Supabase queries follow RLS rules where applicable
- [ ] APP_STATUS.md updated
- [ ] Ready for commit
