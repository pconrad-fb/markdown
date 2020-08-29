# Setting up Git

If you don't already have Git set up on your computer, follow these steps.

## Install Git

1. Install Git on your computer:
    - [Windows](https://git-scm.com/download/win)
    - [macOS](https://git-scm.com/download/mac)
    - [Linux](https://git-scm.com/download/linux)
1. Install a git client such as  [Sourcetree](https://www.sourcetreeapp.com/).

!!! hint
    You can use any Git client with any Git host, but some clients work especially well
    with specific hosts. For example:
    
    - Sourcetree and Bitbucket
    - GitHub Desktop and GitHub


## Set up a repository

A *repository* is where you keep your work. There are many approaches to creating a repository. One easy way is to create the repository online  and *clone* it (create a local copy). The steps are similar for different Git hosts and clients. Here is what those steps look like in Bitbucket and Sourcetree:

1. Sign up with a Git host such as [Bitbucket](https://bitbucket.org/).
2. In a browser, log on to Bitbucket (or your preferred host).
2. Click the new repository button (the plus sign):  
   ![Add a repository](../img/recipes-git-repo-bb-add.png)
3. Type a repository name, make sure it's set to be a public repository, and 
   click **Create repository**.
4. Choose or create a directory on your computer where you would like to keep your local 
copy of the project.
5. Click **Clone in Sourcetree**.  
   !["Clone in Sourcetree" dialog](../img/recipes-git-wiki-bb-clone.png)
6. Make sure the correct repository is going to the correct folder on your computer,
   and click **Clone**.

It might not look like much has happened, but you now have:

- Git running on your computer
- A repository at an online Git host
- A local copy of the repository on your computer

## Practice good Git habits

A good Git workflow looks like this:

1. **Make sure you're on the right branch.** Even if you're working on a project with no branches, get in the habit of checking. That way, when you do work on more complicated projects, you won't have to fix something you did on the wrong branch by accident.
2. **Pull before you start working.** Pulling every so often keeps you up to date with other people's changes, reducing the likelihood that you will run into complicated merge conflicts later on. 
3. **Stage and commit fairly often.** *Staging* files means deciding which ones to commit. Most of the time, there's no reason not to stage all changed files and commit them to your local repository frequently. Every commit is a point you can roll back to, giving you plenty of power to back out changes if necessary.
4. **Push when your work is ready for review.** *Pushing* files up to the local repository makes them available to others, so it's kindest not to push until your work is in good shape. In projects that use branching, a push is not the final step; after pushing people can review your work before it is pushed into production. If your project only has one branch, then when you push that's it.

## Next steps

Try setting up a [Git wiki](../recipes-git-wiki).