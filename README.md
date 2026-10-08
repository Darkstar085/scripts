
-----------------------------------------------------------------------

<p align="center">
 <img src="https://user-images.githubusercontent.com/29405483/138224247-544d09ea-9106-4cec-9ac2-08ccb4d19fe0.png" >
</p>

-----------------------------------------------------------------------


Sources For Land & Whyred & Avicii
====================================


Run Commands
------------

* Clone this repo into Rom Source Directry.(i.e if you are syncing *lineage* then in ~/lineage).

```bash
      git clone https://github.com/Sweeto143/scripts.git -b darkstar
```

* Clone the source you want.

```bash
      bash scripts/<name_of_the_source>
```

Example

```bash
      bash scripts/whyred/darkstar.sh
```

* It will clone all files automatically.


## Git Aliases
------------

The `git.sh` setup configures the Git identity and adds aliases for common commit, sync, status, diff, and history workflows.

| Alias | Command | Use case |
|---|---|---|
| `git c` | `commit` | Create a normal commit. |
| `git cp` | `cherry-pick` | Cherry-pick a commit without automatically adding a sign-off. |
| `git cs` | `commit -s` | Create a signed-off commit. |
| `git cps` | `cherry-pick -s` | Cherry-pick a commit with a sign-off. |
| `git s` | `status` | Check the full working tree status. |
| `git ss` | `status --short --branch` | Quickly see changed files and branch tracking. |
| `git br` | `branch --show-current` | Show the current branch name. |
| `git bv` | `branch -vv` | List branches with their upstream/tracking information. |
| `git rh` | `fetch origin && reset --hard origin/<branch>` | Reset the current branch to its remote state. **Destructive:** local uncommitted changes are discarded. |
| `git fp` | `fetch --prune origin` | Fetch remote updates and remove stale remote-tracking references. |
| `git up` | `pull --rebase` | Update the current branch using rebase. |
| `git sync` | `fetch origin && status -sb` | Refresh remote state and show branch status. |
| `git d` | `diff` | View unstaged changes. |
| `git ds` | `diff --cached` | View staged changes. |
| `git stat` | `diff HEAD --stat` | Show the current diff summary. |
| `git lg` | `log --oneline --decorate --graph --all` | View compact graphical history. |
| `git last` | `log -1 --stat` | Inspect the latest commit and file summary. |
| `git show` | `show --stat --oneline HEAD` | Show the latest commit and file summary. |
| `git undo` | `reset --soft HEAD~1` | Undo the latest commit while keeping its changes staged. |

### Common use cases

**Create a signed-off commit**
```bash
git cs
```

**Cherry-pick with sign-off**
```bash
git cps <commit>
```

**Check and review changes**
```bash
git ss
git d
git stat
```

**Review the latest commit and history**
```bash
git show
git last
git lg
```

**Undo the latest commit but keep its changes**
```bash
git undo
```
