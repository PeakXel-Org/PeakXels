# Contributing Guidelines

This document defines the conventions, rules, and procedures that all team members must follow when contributing to the Astrologika project. These guidelines help maintain an organized workflow, consistent codebase, and effective team collaboration.

## 1. General Collaboration Rules

- All team members must work using their assigned branches.
- Do not make direct changes or push commits to the `main` branch.
- Always synchronize your local repository with the latest changes from `main` before starting new work or making changes.
- Follow the established branch naming and commit message conventions.
- Keep commits focused on specific changes.
- Test your changes before pushing them to the repository.
- Communicate with the team when encountering conflicts, issues, or significant changes.
- All changes intended for `main` must go through a Pull Request.

## 2. Branch Naming Convention

All branches must follow this format:

`type/linear-issue-id/short-description`

### Branch Types

| Type | Purpose | Example |
|---|---|---|
| `feat` | New gameplay features or functionality | `feat/pea-107-machine-interaction` |
| `fix` | Bug fixes and corrections | `fix/pea-108-door-collision` |
| `refactor` | Improve code structure without changing behavior | `refactor/pea-109-collision-system` |
| `docs` | Documentation changes | `docs/pea-110-update-readme` |
| `test` | Adding or updating tests | `test/pea-111-player-movement` |
| `chore` | Project maintenance and configuration | `chore/pea-112-project-setup` |

### Branch Naming Rules

- Always use lowercase letters.
- Use hyphens to separate words in the description.
- Include the corresponding Linear issue ID.
- Keep descriptions short, simple, and readable.
- Create a separate branch for each assigned task or user story.
- Do not use spaces or special characters in branch names.

## 3. Commit Message Convention

All commit messages must follow the Conventional Commits format:

`type(scope): description`

### Commit Types

| Type | Purpose | Example |
|---|---|---|
| `feat` | Introduces a new feature | `feat(player): add player movement` |
| `fix` | Fixes a bug | `fix(door): correct collision detection` |
| `refactor` | Improves existing code structure | `refactor(collision): centralize collision handling` |
| `docs` | Updates documentation | `docs(readme): update project description` |
| `test` | Adds or updates tests | `test(player): add movement tests` |
| `chore` | Performs maintenance tasks | `chore(godot): update project settings` |

### Commit Message Rules

- Use lowercase letters for the type, scope, and description.
- Write a short, simple, and readable description.
- Use the present tense and an imperative style.
- Do not end the description with a period.
- Keep each commit focused on a specific change.
- Avoid vague messages such as `update`, `changes`, or `fixes`.

## 4. Pulling and Synchronization Rules

Before starting a new task, always synchronize your local repository with the latest version of `main`.

### Update the Main Branch

```bash
git switch main
git pull origin main
```

### Update an Existing Feature Branch

If `main` receives new changes while you are working:

```bash
git switch main
git pull origin main
git switch feat/pea-107-machine-interaction
git merge main
```
If you want to directly get the changes from `main` and automatically merge with your current branch, below is the alternative way:

```bash
git pull origin main
```

### Synchronization Rules

- Always pull the latest changes from `main` before starting a new task.
- Keep your feature branch updated when necessary.
- Resolve merge conflicts carefully.
- Test your changes after resolving conflicts.
- Never overwrite another developer's work.

## 5. Pushing Rules

All developers must push their changes to their respective feature branches.

### First Push

```bash
git push -u origin feat/pea-107-machine-interaction
```

### Subsequent Pushes

```bash
git push
```

### Pushing Rules

- Never push directly to `main`.
- Push only to your assigned branch.
- Make sure your commits follow the established convention.
- Review your changes before pushing.
- Ensure that unnecessary files, temporary files, and generated files are not included.
- Push regularly to keep your remote branch updated.

## 6. Pull Request Guidelines

All changes intended for the `main` branch must be submitted through a Pull Request.

### Pull Request Requirements

- The base branch must be `main`.
- The source branch must follow the established branch naming convention.
- Use a clear and meaningful PR title following Conventional Commits.
- Include the related Linear issue.
- Provide a brief description of the changes.
- List the important modifications made.
- Include testing details.
- Attach screenshots or recordings when applicable.
- Complete the Pull Request checklist.

Refer to `.github/PULL_REQUEST_TEMPLATE.md` for the required Pull Request format.

## 7. Code Review Guidelines

Every Pull Request must be reviewed by at least two other team member before merging.

### Reviewer Responsibilities

Reviewers must check the following:

- **Functionality:** Verify that the implemented feature works as intended.
- **Code Quality:** Check readability, consistency, and maintainability.
- **Architecture and Design:** Ensure that the implementation follows the project's established architecture and design decisions.
- **Error Handling:** Check how the implementation handles unexpected situations and potential errors.
- **Compatibility:** Ensure that the changes do not negatively affect existing game functionality.
- **Testing:** Verify that appropriate testing has been performed.

### Review Expectations

- Provide clear and constructive feedback.
- Explain identified problems and suggest improvements when necessary.
- Ask questions when the implementation is unclear.
- Do not approve changes that contain unresolved critical issues.
- Developers must address requested changes before approval.

## 8. Merging Rules

A Pull Request can only be merged into `main` when all requirements are satisfied.

### Merge Requirements

- At least two team member has approved the Pull Request.
- All requested changes have been addressed.
- All review conversations have been resolved.
- Required automated checks have passed, once CI is configured.
- The changes have been tested and are ready for integration.

### Merging Convention

- Use **Squash and merge** as the standard merging method.
- Do not merge your own Pull Request without the required approval.
- Do not bypass established review and merging requirements.
- Delete the feature branch after successfully merging, when it is no longer needed.

## 9. Merge Conflict Resolution

All team members must resolve merge conflicts carefully to maintain code consistency and prevent unintended changes.

### Conflict Resolution Rules

- Review all conflicted files before making changes.
- Understand the differences between the conflicting versions.
- Preserve the intended functionality of both changes whenever possible.
- Do not automatically accept all incoming or current changes without reviewing them.
- Remove all conflict markers before completing the merge.
- Test the affected functionality after resolving conflicts.
- Communicate with the concerned team members when the correct implementation is unclear.
- Follow the established Conventional Commits format when creating separate commits for conflict-related code changes.
- Default Git-generated merge commit messages may be retained when completing merge operations.

### Merge Commit Messages

- Retain Git's default merge commit message whenever possible.
- Developers may edit merge commit messages for clarity when necessary.
- Merge commit messages are exempt from the Conventional Commits format.
- Conventional Commits must still be followed for regular feature, fix, refactor, and other development commits.

## 10. General Development Expectations

All team members are expected to:

- Follow the project's established coding standards and architecture.
- Write readable, organized, and maintainable code.
- Avoid unnecessary duplication.
- Keep changes within the scope of the assigned task.
- Test implemented features before requesting a review.
- Respect existing implementations and other team members' contributions.
- Communicate technical decisions that may affect other parts of the project.

---

**Note:** All team members are expected to read, understand, and follow these guidelines throughout the development of Astrologika. Any changes to these conventions must be discussed and agreed upon by the team.
