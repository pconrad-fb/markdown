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

With Git, you can collaborate safely with others, working independently and merging your work as needed. That's why Git is so useful for recipes like these:

- [Distributed workflow](../../recipes/recipes-distributed-workflow/)
- [Git wiki](../../recipes/recipes-git-wiki)
- [Gitflow](../../recipes/recipes-gitflow)

!!! note
    For the examples in this guide, I've decided to use Bitbucket and Sourcetree. Other
    Git repositories and clients are similar, so you should be fine if you select
    something else. One thing I like about Sourcetree is the way it handles staging
    (committing) files.
    
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

You open a file in an editor, make some changes, and save the file. If you are not using Git&mdash;if you're just saving files on your computer&mdash;then you're done.

But if you're using Git, then Git will notice the changes you made to the file. If you meant to make those changes, you must *commit* them. This is like "saving changes to Git." When you commit, you type a little note describing the changes so that people know what was done. When you have committed, your changes are stored in the *repository.* It's just like that old central repository, but it's just on your computer.

If you want other people to be able to work on your files, then you need to put them in an online repository (such as Bitbucket, GitHub, or GitLab). This is not *checking in* since the changes are already committed to your local repository. This is called a *push* to a *remote repository*.

Once something is in an online repository, an authorized person can make their own copy of it&mdash;the whole repository&mdash; with a *pull.*

If you're working on a repository that already exists online, here are the steps you might use during the day.

1. When you start working on the project, you **pull** to make sure you have the lateest copy of all the changes that other people might have pushed. 
2. Every time you've made enough changes that you feel like you should "save" your work, you **commit**. This creates a checkpoint you can roll back to if you ever need to.
3. You might commit many times while you're working on the project. While you're working, you might be previewing your work in a browser, running your code, testing, and so on. Git doesn't mind. Just commit whenever you feel like it.
4. If other people are working in the same project, you might want to pull from time to time to make sure you have the latest changes. Most of the time, the changes will merge automatically into your local repository, but if there are any conflicts it's nice to be able to resolve them locally.
4. When your work is ready for other people to look at, you **push** to send the changes to the remote repository.

There's often more to Git than that. There's more info in the recipes that need more info.
