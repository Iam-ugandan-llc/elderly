# Senior Rides GitHub Issues

This package contains GitHub-ready phase issues for the nonprofit senior transportation app.

## Files

- `create_github_issues.sh` - creates labels, milestones, and issues using GitHub CLI
- `issues/` - markdown body files for each GitHub issue

## How to use

1. Install GitHub CLI if needed: https://cli.github.com/
2. Create an empty GitHub repo (or use an existing one).
3. Login:

```bash
gh auth login
```

4. From this folder, run one of:

**Windows (PowerShell):**

```powershell
.\create_github_issues.ps1 OWNER/REPO
```

**macOS / Linux / Git Bash:**

```bash
./create_github_issues.sh OWNER/REPO
```

Example:

```powershell
.\create_github_issues.ps1 kotakirobert/senior-rides
```

## Recommended workflow

Start with Issue 1 only. After each issue passes testing, close it and move to the next issue.
