# Phase 2: Create Supabase database schema and RLS

## Deliverable

Create production Supabase database schema, enums, seed data, and Row Level Security.

Tables:
- profiles
- riders
- caregivers
- drivers
- driver_applications
- vehicles
- driver_documents
- driver_availability
- service_areas
- ride_requests
- rides
- ride_stops
- ride_locations
- ride_events
- incident_reports
- notifications
- donations
- admin_actions
- organization_settings

Enums:
- profile_role
- profile_status
- driver_status
- document_status
- ride_purpose
- ride_request_status
- ride_status
- incident_severity

## How to test

- Run migrations in Supabase SQL Editor or Supabase CLI
- Confirm all tables exist
- Confirm RLS is enabled on every table
- Insert seed records
- Confirm rider cannot see another rider's records
- Confirm driver cannot see unassigned rides
- Confirm admin can manage all records

## Cursor instruction

```text
Phase 2: Create Supabase database schema and RLS.

Create SQL migrations in supabase/migrations.

Tables:
- profiles
- riders
- caregivers
- drivers
- driver_applications
- vehicles
- driver_documents
- driver_availability
- service_areas
- ride_requests
- rides
- ride_stops
- ride_locations
- ride_events
- incident_reports
- notifications
- donations
- admin_actions
- organization_settings

Create enums:
- profile_role: rider, caregiver, driver, admin
- profile_status: pending, approved, suspended
- driver_status: pending, approved, rejected, suspended
- document_status: pending, approved, rejected, expired
- ride_purpose: medical, pharmacy, grocery, church, errands, social, community_event, other
- ride_request_status: draft, submitted, approved, assigned, canceled, completed
- ride_status: assigned, accepted, driver_on_way, arrived, rider_picked_up, in_progress, dropped_off, completed, canceled
- incident_severity: low, medium, high, emergency

Enable RLS on every table.

Create RLS policies:
- users can read and update their own profile
- riders can read and update their own rider profile
- caregivers can access linked rider records
- drivers can access their own driver, vehicle, availability, and assigned rides
- drivers can insert ride location only for active rides assigned to them
- admins can manage all records
- important admin changes must be logged in admin_actions

Add seed data for one admin, one rider, one caregiver, one driver, and one ride request.

Update APP_STATUS.md with Phase 2 completion notes.
```

## Acceptance checklist

- [ ] Deliverable completed
- [ ] Manual tests passed
- [ ] TypeScript passes
- [ ] No broken navigation
- [ ] Supabase queries follow RLS rules where applicable
- [ ] APP_STATUS.md updated
- [ ] Ready for commit
