# Getting started

You can start working with Markdown just by opening your favorite text editor and starting to type&mdash;but you probably want to do more than that. For example, you might want to 
share information on a website or wiki, take notes, or publish an eBook. To get the most out of Markdown, you'll want to be familiar with some of these tools and topics.

## Ingredients

These are the tools and resources you will use for the recipes in this guide. Each recipe lists the tools you'll need. 

<table>
  <tr>
    <td><b><a href="../../tools/tools-editors/">Markdown editor</a></b></td>
    <td>A Markdown editor is a specialized text editor that works with Markdown. Different editors have different features&mdash;you'll want to play with more than one to find out which you like.</td>
  </tr>
  <tr>
    <td><b><a href="../../tools/tools-pandoc/">Pandoc</a></b></td>
    <td>Pandoc enables your Markdown editor to import and export in several formats and also has a few tricks of its own. I recommend Pandoc for anyone who works with Markdown.</td>
  </tr>
  <tr>
    <td><b><a href="../../tools/tools-storage/">Shared storage</a></b></td>
    <td>If you are collaborating with others, you'll need a shared place to store Markdown files. You might also want web hosting or a blogging platform where you can publish your content when it's complete.</td>
  </tr>
  <tr>
    <td><b><a href="../../tools/tools-git-setup/">Git</a></b></td>
    <td>Source control can be very important for collaborating without catastrophe. You'll need an account with a Git host, a Git client, and Git installed on your computer.</td>
  </tr>
  <tr>
    <td><b><a href="../../tools/tools-publishing/">Publishing tools</a></b></td>
    <td>Documentation management tools, static site generators, and even Pandoc can be useful to convert your content to a final format for general consumption.</td>
  </tr>
</table>

You can install everything up front, or just install what you need as you go along. 
If you're not sure, start with the following steps:

1. Install [Pandoc](../../tools/tools-publishing/#pandoc).
2. Choose and install a [Markdown editor](../../tools/tools-editors/).
3. Set up [Git](../../tools/tools-git-setup/).

!!! hint
    Some editors detect pandoc, so installing it first is a good idea.
    
Once you've got these tools installed, you can start trying the recipes.

## Things to know

You'll find it easiest to follow the recipes in this guide if you are comfortable with the following topics:

**Markdown Syntax**  
Although some editors provide a WYSIWYG experience, knowing how to write [Markdown](https://www.markdownguide.org/basic-syntax/) directly will help you work more quickly and easily with a wider variety of tools. 

- See the [Markdown cheatsheet](../../resources/markdown-cheatsheet/)

Markdown comes in a bunch of flavors with different capabilities:

- [CommonMark](https://commonmark.org/)
- [GitHub Flavored Markdown (GFM)](https://github.github.com/gfm/)
- [Markdown Extra](https://michelf.ca/projects/php-markdown/extra/)
- [MultiMarkdown (MMD)](https://fletcherpenney.net/multimarkdown/)

Here are a few differences between these common flavors:

| | CommonMark | GFM | Markdown Extra | MMD |
|---------|:-----:|:-----:|:-----:|:-----:|
|Fenced Code Blocks | &#10004;|&#10004;|&#10004;|&#10004;|
|Syntax Highlighting | |&#10004;|&#10004;|&#10004;|
|Tables | |&#10004;|&#10004;|&#10004;|
|Footnotes | | |&#10004;|&#10004;|
|Auto-linking | |&#10004;| | |
|Strikethrough| |&#10004;| | |
|Definition Lists| | |&#10004;|&#10004;|
|Abbreviations | | |&#10004;|&#10004; |

Some tools include extensions that provide additional capabilities. [Hugo](../../tools/tools-publishing/#hugo), for example, has an extensible framework of shortcodes that let you  create your own features. Many tools, including [MkDocs](../tools/tools-publishing/#mkdocs), use the [Python-Markdown Extensions](https://python-markdown.github.io/extensions/), which offer additional formatting capabilities out of the box. There are also more complex systems that work with Markdown, such as [Markdown+Math](https://marketplace.visualstudio.com/items?itemName=goessner.mdmath), which displays LaTeX math, and [Mermaid](https://mermaid-js.github.io/mermaid/#/), which generates diagrams.

!!! Note
    Different tools offer different extensions, so plan ahead for the content you want to 
    create. For example, some of the Markdown extensions available in MkDocs don't work
    in Pandoc, and vice versa.

**The command line**  
Some of the recipes in this guide involve at least some typing on the command line. You'll definitely need to use the command line a little bit when you're working with [Hugo](../../tools/tools-publishing/#hugo), [MkDocs](../../tools/tools-publishing/#mkdocs), or [Pandoc](../../tools/tools-publishing/#pandoc). 

**Working with a package manager**  
Installing some tools requires using one of the following common package managers:

- Linux: [apt-get](https://help.ubuntu.com/community/AptGet/Howto) or [yum](http://yum.baseurl.org/)
- macOS: [Homebrew](https://brew.sh/)
- Windows: [Chocolatey](https://chocolatey.org/)
  
A package manager can make it easy to install several packages at once. For example:

```
sudo apt-get install python3 ghostwriter pandoc mkdocs hugo gftp
```

**Git**  
Some of the recipes in this guide use [Git](https://git-scm.com/). Git is very powerful, but doesn't have to be hard to use. The recipes in this guide emphasize simplicity. If you already know Git, you can choose to do things differently. If you don't know git, take a look at [Git basics](../getting-started-git-basics).

**Other documentation tools**
The point of Markdown is to produce content that can be published and consumed in another format&mdash;originally HTML, and now Word, slides, PDFs, and other formats. You should know something about tools like Acrobat, Google Drive, Microsoft Office, and other places where your Markdown might end up.