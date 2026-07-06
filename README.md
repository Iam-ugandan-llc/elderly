# Senior Rides

Nonprofit senior transportation platform with three Expo React Native apps:

- **Rider App** - seniors request rides
- **Driver App** - volunteer drivers accept and complete rides
- **Admin App** - dispatch, approvals, and operations

## Monorepo Structure

```text
apps/
  rider-app/
  driver-app/
  admin-app/
packages/
  shared-ui/
  shared-types/
  shared-supabase/
  shared-utils/
supabase/
  migrations/
```

## Development

Install dependencies:

```sh
npm install
```

Run an app:

```sh
npm run start:rider
npm run start:driver
npm run start:admin
```

Run on a physical iPhone through Expo Go:

```sh
npm run start:rider:tunnel
npm run start:driver:tunnel
npm run start:admin:tunnel
```

Scan the QR code with the Expo Go app. Use one app command at a time.

Check TypeScript across the workspace:

```sh
npm run typecheck
```

Each Expo app includes `.env.example` for public environment variables used by `app.config.ts`.

## Phase Scope

Phase 1 creates the monorepo foundation only. Authentication, Supabase tables, RLS policies, and ride workflows are intentionally left for later phases.

## Organization

Maintained by [IAM Ugandan LLC](https://github.com/Iam-ugandan-llc).
