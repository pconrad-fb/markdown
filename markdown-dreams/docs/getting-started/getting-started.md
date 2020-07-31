# Getting started

<!--
TO DO

Talk about how you edit, store, publish
How these docs work - what's a recipe? Why aren't all the instructions on one page?
-->
You can start working with Markdown just by opening your favorite text editor and starting to type, but you probably want to do more than that. You might want to 
share information on a website or wiki, take notes, or publish an eBook.

## Ingredients

<table>
  <tr>
    <td><b><a href="../../tools/tools-editors/">Markdown editor</a></b></td>
    <td>You'll want to play with more than one to find out which one you like. This is the thing you'll be using for all your work.</td>
  </tr>
  <tr>
    <td><b><a href="../../tools/tools-pandoc/">Pandoc</a></b></td>
    <td>This lets your Markdown editor import and export in several formats and also lets you do cool publishing stuff. It's a must.</td>
  </tr>
  <tr>
    <td><b><a href="../../tools/tools-storage/">Shared storage</a></b></td>
    <td>A place to store your MD files a place to publish web content</td>
  </tr>
  <tr>
    <td><b><a href="../../tools/tools-git-setup/">Git</a></b></td>
    <td>Source control made easy. yeah, I said it</td>
  </tr>
  <tr>
    <td><b><a href="../../tools/tools-publishing/">Publishing tools</a></b></td>
    <td>Things that build static sites, and Pandoc is kind of a publishing tool too</td>
  </tr>
</table>

## First steps

Each recipe says what it needs. You can just install what you need as you go along, but here is the minimum startup I recommend:

1. Install [Pandoc](../../tools/tools-pandoc/).
2. Choose and install a [Markdown editor](../../tools/tools-editors/).
3. Set up [Git](../../tools/tools-git-setup/).

!!! hint
    Some editors detect pandoc, so instaling it first is a good idea.

## Things to know

You'll find it easiest to follow the recipes in this guide if you are comfortable with the following topics:

**Markdown Syntax**  
Although some tools provide a WYSIWYG experience, knowing how to write [Markdown](https://www.markdownguide.org/basic-syntax/) directly will help you work more quickly and easily with a wider variety of tools. Markdown comes in a bunch of flavors. That doesn't always matter but it's a good idea for you to look at them. Links to GFM, CommonMark, some of the extensions that are used in MkDocs and others. Tools like Mermaid and Math stuff.

**The command line**  
Some of the recipes in this guide involve at least some typing on the command line, if only to install tools. 

**Working with a package manager**  
Installing some tools requires using one of the following common package managers:

  - Windows: [Chocolatey](https://chocolatey.org/)
  - macOS: [Homebrew](https://brew.sh/)
  - Linux: [apt-get](https://help.ubuntu.com/community/AptGet/Howto) or [yum](http://yum.baseurl.org/)

**Git**  
Some of the recipes in this guide use [Git](https://git-scm.com/). Git is very powerful, but doesn't have to be hard to use. The recipes in this guide emphasize simplicity. If you already know Git, you can choose to do things differently. If you don't know git, take a look at [Git basics](../getting-started-git-basics).

**Other documentation tools**
The point of Markdown is to produce content that can be published and consumed in another format&mdash;originally HTML, and now Word, slides, PDFs, and other formats. You should konw something about these things.

## About the recipes

Just as a lasagna recipe assumes you know how to boil water, the recipes in this guide assume you know some stuff. Each recipe has to be short. So for eample there isn't a copy of the Git workflow and how to Push in every recipe that uses Git. Fortunately, they link to the instructions. In other words, common instructions are in one place but linked to.

The recipes go together. You might use Centralized workflow to manage content you write in Mardkwo along with MCreate a document in Pandoc to publish to a PDF, or you might take content that started out in Notes and turn it into a standalone slide presentation. The goal is for you to understand the pieces and combine them however yo uwant.

## Next steps

Jump into the [Recipes](../recipes/)!


