# Phase 13: Production polish and app-store readiness

## Deliverable

Prepare all three apps for TestFlight/Google Play internal testing:
- app icons
- splash screens
- app config
- bundle IDs/package names
- EAS profiles
- privacy policy screen
- terms screen
- safety disclaimer
- permission explanations
- production env vars

## How to test

Build preview apps:
- eas build --profile preview --platform ios
- eas build --profile preview --platform android

Confirm:
- apps install on real devices
- permissions show correct wording
- location works
- login works
- no dev keys exposed
- privacy/terms links work

## Cursor instruction

```text
Phase 13: Prepare all three apps for production app-store submission.

For each app:
- add production app icon
- add splash screen
- configure app.config.ts
- configure bundle identifier/package name
- configure EAS build profiles
- add privacy policy screen
- add terms of service screen
- add safety disclaimer screen
- add permission explanation screens
- configure location permissions
- configure camera/photo permissions
- configure notification permissions
- configure production environment variables

Apps:
- Rider App
- Driver App
- Admin App

Create:
- eas.json
- build scripts
- README deployment instructions
- APP_STATUS.md production readiness checklist

Do not submit yet.
Prepare for TestFlight and Google Play internal testing.
```

## Acceptance checklist

- [ ] Deliverable completed
- [ ] Manual tests passed
- [ ] TypeScript passes
- [ ] No broken navigation
- [ ] Supabase queries follow RLS rules where applicable
- [ ] APP_STATUS.md updated
- [ ] Ready for commit
