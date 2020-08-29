# Overview

You can use Pandoc to create a PDF, which makes it easy for anyone to read and discourages editing.

## Ingredients

<table>
  <tr>
    <td><b><a href="../../tools/tools-editors/">Markdown editor</a></b></td>
  </tr>
  <tr>
    <td><b><a href="../../tools/tools-pandoc/">Pandoc</a></b></td>
  </tr>
   <tr>
    <td><b><a href="https://get.adobe.com/reader/">Adobe Acrobat</a></b></td>
  </tr>
</table>

## Creating the PDF

The command for creating the PDF is simple. With a single Markdown file, it looks like this:

```
pandoc -o my_document.pdf my_markdown.md
```


### Concatenating multiple files

You can specify as many files as you like. For example:

```
pandoc -o my_document.pdf chapter_1.md chapter_2.md
```

### Title file

You can specify a title, author, licensing, and other information about the book in a file called `title.txt` at the front of the book, containing YAML that Pandoc uses when it generates the PDF file.

Example:
```
---
title: How to do things with Markdown and Git
author: Peter S. Conrad
language: en-US
...

```

Creating a PDF with a title file and multiple Markdown files looks like this:

```
pandoc -o my_document.pdf title.txt chapter_1.md chapter_2.md
```

### Images

When your Markdown includes images, use relative paths. For example:

```
![An image](../images/whatever.png)
```

In the above example, the `images` directory is at the same level as the file containing the Markdown file; the relative path goes up a directory from the Markdown file and then down into the `images` directory to find the image.

When Pandoc follows these relative links, it starts from the directory where you typed the `pandoc` command. If you want Pandoc to find your images, either run the command from a directory where the relative links to the images make sense, or copy the images to a place where the relative links can find them.

Needless to say, if the relative links follow different paths from different Markdown files, that makes more work for you.

### Errors

Pandoc can use a number of different PDF engines with different capabilities. In some cases, special characters or other formatting can cause the PDF creation to fail. You can try specifying a different PDF engine, remove the characters or formatting causing the problem, or create a Word document and export the PDF from there.

```
! Package inputenc Error: Unicode character ✔ (U+2714)
(inputenc)                not set up for use with LaTeX.

See the inputenc package documentation for explanation.
Type  H <return>  for immediate help.
 ...                                              
                                                  
l.238 Fenced Code Blocks & ✔

Try running pandoc with --pdf-engine=xelatex.
```

### Cleaning up

If you are converting content from another project&mdash;an MkDocs site, for example&mdash;you're likely to have included formatting such as Python extensions that Pandoc doesn't handle. You'll need to edit the ePub and clean up these items. For example:

- Admonitions
- Content tabs
- Snippets

If you use HTML in your Markdown, especially HTML examples (for example, in a document about web design), Pandoc can get confused about what to do. For example, Pandoc doesn't convert HTML tables to native PDF tables.

