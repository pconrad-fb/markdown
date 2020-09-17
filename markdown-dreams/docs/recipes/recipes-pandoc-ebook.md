# Create an ePub book

You can use Pandoc to create an ePub book suitable for tablets and phones or for self-publishing on [Amazon](https://kdp.amazon.com/en_US/bookshelf).

## Ingredients

<table>
  <tr>
    <td><b><a href="../../tools/tools-editors/">Markdown editor</a></b></td>
  </tr>
  <tr>
    <td><b><a href="../../tools/tools-pandoc/">Pandoc</a></b></td>
  </tr>
   <tr>
    <td><b>An ePub editor such as <a href="https://sigil-ebook.com/">Sigil</a></b></td>
  </tr>
</table>

## Creating the book

The command for creating the book is simple. With a single Markdown file, it looks like this:

```
pandoc -o my_book.epub my_markdown.md
```


### Concatenating multiple files

You can specify as many files as you like. For example:

```
pandoc -o my_book.epub chapter_1.md chapter_2.md
```

### Title file

You can specify a title, author, licensing, and other information about the book in a file called `title.txt` at the front of the book, containing YAML that Pandoc uses when it generates the ePub file.

Example:
```
---
title: How to do things with Markdown and Git
author: Peter S. Conrad
language: en-US
...

```

Creating a book with a title file and multiple Markdown files looks like this:

```
pandoc -o my_book.epub title.txt chapter_1.md chapter_2.md
```

### Images

When your book includes images, use relative paths. For example:

```
![An image](../images/whatever.png)
```

In the above example, the `images` directory is at the same level as the file containing the Markdown file; the relative path goes up a directory from the Markdown file and then down into the `images` directory to find the image.

When Pandoc follows these relative links, it starts from the directory where you typed the `pandoc` command. If you want Pandoc to find your images, either run the command from a directory where the relative links to the images make sense, or copy the images to a place where the relative links can find them.

### Cleaning up

If you are converting content from another project&mdash;an MkDocs site, for example&mdash;the Markdown files might include formatting such as Python extensions that Pandoc doesn't handle. You'll need to edit the ePub and clean items like these:

- Admonitions
- Content tabs
- Snippets

### Working with a large number of files

When your book contains many files, the command can get unwieldy:

```
pandoc -o markdown-dreams.epub title.txt ../index.md ../getting-started/getting-started.md
 ../tools/tools-editors.md ../tools/tools-storage.md ../tools/tools-git.md ../tools/tools-
 git-setup.md ../tools/tools-git-basics.md ../tools/tools-publishing.md ../recipes/recipes
 -notes.md ../recipes/recipes-git-wiki.md ../recipes/recipes-centralized-workflow.md ../
 recipes/recipes-gitflow.md ../recipes/recipes-hugo.md ../recipes/recipes-mkdocs.md ../
 recipes/recipes-pandoc-word.md ../recipes/recipes-pandoc-ebook.md ../recipes/recipes-
 pandoc-pdf.md ../recipes/recipes-pandoc-web.md ../recipes/recipes-slides.md ../recipes/
 recipes-slides-dzslides.md ../recipes/recipes-slides-remark.md ../resources/markdown-
 cheatsheet.md ../resources/resources-glossary.md ../resources/templates.md ../resources/
 links.md
```

With a lot of chapters, you will find it easier to use a script. You can run the script by typing a single command, and you can edit the script easily to make changes. You can create a script on macOS or Linux, or using the new Bash shell in Windows 10.

Here is an example:

```
#!/bin/bash

pandoc -o markdown-dreams.epub \
	title.txt \
	../index.md \
	../getting-started/getting-started.md \
	../tools/tools-editors.md \
	../tools/tools-storage.md \
	../tools/tools-git.md \
	../tools/tools-git-setup.md \
	../tools/tools-git-basics.md \
	../tools/tools-publishing.md \
	../recipes/recipes-notes.md \
	../recipes/recipes-git-wiki.md \
	../recipes/recipes-centralized-workflow.md \
	../recipes/recipes-gitflow.md \
	../recipes/recipes-hugo.md \
	../recipes/recipes-mkdocs.md \
	../recipes/recipes-pandoc-word.md \
	../recipes/recipes-pandoc-ebook.md \
	../recipes/recipes-pandoc-pdf.md \
	../recipes/recipes-pandoc-web.md \
	../recipes/recipes-slides.md .\
	../recipes/recipes-slides-dzslides.md \
	../recipes/recipes-slides-remark.md \
	../resources/markdown-cheatsheet.md \
	../resources/resources-glossary.md \
	../resources/templates.md \
	../resources/links.md
```

The first line tells the computer that this is a Bash script. After that, you can just type the command the same way you would run it on the command line. For readability (and ease of editing), you can break likes with a backslash.

Save the file with a short name like `build.sh` and make it executable. At the command prompt, you can type:

```
chmod +x build.sh
```

You can then run the script by name:

```
./build.sh
```

