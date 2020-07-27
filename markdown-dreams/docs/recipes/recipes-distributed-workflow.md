# Overview

A Git repository is for storing files and other content. Although a git repository comes with a separate wiki repository, you might sometimes want to collaborate on content without the constraints of storing it in a wiki.

In other words, [Running a Git wiki](../recipes-git-wiki) is a easy way to create, edit, and view a lot of content&mdash;but using other tools to work with content on your own computer, using a Git repository only for source control, is a much more robust way to collaborate. For non-production content such as specifications, planning documents, newsletters, internal documentation, and the like, it's probably fine for everyone to work on a single branch. It's not too likely that many people will work on the same pieces of content in ways that are impossible to merge. We'll stick with the simple single-branch strategy called the 

## Before you begin

Make sure you have read [Git basics](../../getting-started/getting-started-git-basics).

You'll need:

- Git installed on your computer
- An account with an online Git host
- A repository set up on your host such as Bitbucket
- A Git client such as Sourcetree
- A text editor or Markdown editor

!!! note
    This recipe doesn't use branching at all. This might seem strange to anyone
    who has been using Git for a while.
    
Working with content stored in a normal Git repository is similar to &mdash;except that when you use a normal repository (not the wiki repository that comes with it) it doesn't operate as a wiki online. In other words:

- With a Git wiki, you can edit and arrange content online or on your own computer
- With a normal Git repository, you are generally editing and arranging content on your own computer

It's true that you can actually edit content files online in a normal Git repository, but if you try it you will soon see how it is d