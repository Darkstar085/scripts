
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

The `git.sh` setup configures the Git identity and adds short aliases for common repository workflows.

| Alias | Command | Use case |
|---|---|---|
| `git g` | `git` | Run Git commands through the short `g` alias. |
| `git c` | `commit` | Create a normal commit. |
| `git cp` | `cherry-pick` | Cherry-pick a commit without automatically adding a sign-off. |
| `git cs` | `commit -s` | Create a signed-off commit. |
| `git cps` | `cherry-pick -s` | Cherry-pick a commit with a sign-off. |
| `git s` | `status` | Check the full working tree status. |
| `git ss` | `status --short --branch` | Quickly see changed files and branch tracking. |
| `git br` | `branch --show-current` | Show the current branch name. |
| `git bv` | `branch -vv` | List branches with their upstream/tracking information. |
| `git rh` | `fetch origin && reset --hard origin/<branch>` | Make the current branch exactly match its remote branch. **Destructive:** local uncommitted changes are discarded. |
| `git fp` | `fetch --prune origin` | Fetch remote updates and remove stale remote-tracking references. |
| `git up` | `pull --rebase` | Update the current branch using rebase instead of a merge commit. |
| `git sync` | `fetch origin && status -sb` | Refresh remote state and see whether the branch is ahead/behind. |
| `git d` | `diff` | View unstaged changes. |
| `git ds` | `diff --cached` | View staged changes before committing. |
| `git lg` | `log --oneline --decorate --graph --all` | View a compact graphical commit history. |
| `git last` | `log -1 --stat` | Inspect the latest commit and changed-file summary. |
| `git stat` | `diff HEAD --stat` | Show the current working-tree diff summary. |
| `git show` | `show --stat --oneline HEAD` | Show the latest commit and its file summary. |
| `git undo` | `reset --soft HEAD~1` | Undo the latest commit while keeping its changes staged. |
| `git check` | status + latest commit + remotes | Quick repository snapshot before or after a change. |
| `git verify` | status + full latest commit + diff stat | Verify the final local commit and its change summary. |
| `git rhead` | local HEAD + remote HEAD | Compare the current local commit with the remote branch HEAD. |

### Common use cases

**Create a normal commit**
```bash
git c
```

**Create a signed-off commit**
```bash
git cs
```

**Cherry-pick normally**
```bash
git cp <commit>
```

**Cherry-pick with sign-off**
```bash
git cps <commit>
```

**Check what changed**
```bash
git ss
git d
git stat
```

**Check the latest commit**
```bash
git show
```

**Undo the latest commit but keep its changes**
```bash
git undo
```

**Check whether local and remote are in sync**
```bash
git sync
git rhead
```

**Review history**
```bash
git lg
git last
```
