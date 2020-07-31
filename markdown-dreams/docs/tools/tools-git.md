# Source control with Git

Any time you collaborate with others, source control is important. Although you could just share a folder in the cloud, eventually there will come a time when someone overwrites or deletes something important. That's where source control comes in. And by "source control," I mean Git. 

!!! note
    If you're just using Markdown to take notes or create Word documents, PDFs, and
    slides, you might not need Git. But if you're collaborating with others, read on!

## Why Git?

Back in the day, there were all kinds of source control systems. The ones I remember were all pretty easy to use, but were all centralized&mdash;meaning that only one person can edit any given file at any given time. Worse, it means that there's one central source of truth; if that gets corrupted or lost, everything is gone. Git solves these problems and [doesn't have to be hard to use](https://levelup.gitconnected.com/git-doesnt-have-to-be-hard-e1e115be6668).

There are many places to host a Git repository. You might start with one of these:

- [Bitbucket](https://bitbucket.org)
- [GitHub](https://github.com/)
- [GitLab](https://about.gitlab.com/)

You can use Git on the command line, but it's even easier if you use a Git client like one of these:

- [GitHub Desktop](https://desktop.github.com/)
- [Sourcetree](https://www.sourcetreeapp.com/)

    
## Git concepts

There's a lot to know about Git. As a writer, you should be able to decide how much you want to learn. You could go read [The Git Book](https://git-scm.com/book/en/v2) if you wanted to, but you might just want to learn *exactly* enough to do your writing and keep out of trouble. 

That's my goal here. I don't want to tell you more than you need to know.

There are a lot of Git terms that are confusing. A lot of things that used to be intuitive&mdash;like the idea that we're working on *files* and we need to *lock* them so that someone else can't *check them out* from the *central repository*&mdash; have no currency in the Git world:

- There's no *central repository* because it represents both a bottleneck and a single point of failure
- No one *checks out* files because there's no central repository
- We don't need to *lock* files because we don't have to worry about them being *checked out*

In fact, we don't care about *files* at all in Git. We only care about *changes.*

### What things mean in Git

Let's say you have a directory of files you're working on. yes, Git doesn't care about files, but you do!

You open a file in an editor, make some changes, and save the file. Git will notice the changes you made to the file. If you meant to make those changes, you must *commit* them. This is like "saving changes to Git." When you commit, you type a little note describing the changes so that people know what was done. When you have committed, your changes are stored in the *repository.* It's just like that old central repository, but it's just on your computer.

If you want other people to be able to work on your files, then you need to put them in an online repository (such as Bitbucket, GitHub, or GitLab). This is not *checking in* since the changes are already committed to your local repository. This is called a *push* to a *remote repository*.

Once something is in an online repository, an authorized person can *clone* their own copy of the whole repository. As they work, they can *pull* the lagest changes to stay up to date.

If you're working on a repository that already exists online, here are the steps you might use during the day.


## Branching

Git lets people work in separate work streams called *branches* so that they don't interfere with each other's work. There are different branching strategies. Some are complicated; others are simple. The recipes in this guide use two of them, described in [Git basics](../tools-git-basics/). When you have several branches to work in , Git remembers the state of everything in each of them so that when you switch between them everything is just how you expect it. 

#### Example

In my `test-branch` I added a file called `new-file.md`:

```
$ ls
getting-started  img  index.md  index.md.backup  new-file.md  recipes  resources  tools
```

When I switch to `master`, it's not there:

```
$ git checkout master 
Switched to branch 'master'
Your branch is up to date with 'origin/master'.
$ ls
getting-started  img  index.md  index.md.backup  recipes  resources  tools
```

When I switch back to `test-branch`, it's there:

```
$ git checkout test-branch 
Switched to branch 'test-branch'
$ ls
getting-started  img  index.md  index.md.backup  new-file.md  recipes  resources  tools
```

## Next steps

- [Set up Git](../tools-git-setup/)
