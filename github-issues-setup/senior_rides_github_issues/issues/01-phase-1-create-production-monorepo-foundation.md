# Phase 1: Create production monorepo foundation

## Deliverable

Create a clean monorepo with three Expo TypeScript apps and shared packages.

Expected structure:

```text
senior-rides/
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
  APP_STATUS.md
  README.md
```

Each app should launch to a basic screen:
- Rider App: Senior Rides
- Driver App: Senior Rides Driver
- Admin App: Senior Rides Admin

## How to test

- Run rider app locally
- Run driver app locally
- Run admin app locally
- Confirm all three apps launch
- Confirm TypeScript passes
- Confirm shared packages import correctly
- Confirm APP_STATUS.md is updated

## Cursor instruction

```text
Phase 1: Create the production monorepo foundation.

Create a TypeScript monorepo for three Expo React Native apps:
- apps/rider-app
- apps/driver-app
- apps/admin-app

Create shared packages:
- packages/shared-ui
- packages/shared-types
- packages/shared-supabase
- packages/shared-utils

Use Expo Router in each app.

Each app should have:
- a basic home screen
- a basic login placeholder screen
- app.config.ts
- eas.json support
- TypeScript configured
- environment variable support

Create APP_STATUS.md and document what was completed in Phase 1.

Do not build real authentication yet.
Do not build Supabase tables yet.
Do not build ride features yet.
```

## Acceptance checklist

- [ ] Deliverable completed
- [ ] Manual tests passed
- [ ] TypeScript passes
- [ ] No broken navigation
- [ ] Supabase queries follow RLS rules where applicable
- [ ] APP_STATUS.md updated
- [ ] Ready for commit
