# Publishing

## Git wiki


It's kind

!!! note
    Different Git hosts deal with wikis in different ways. At the time of writing, 
    adding a wiki to a repository on GitHub required either that the repository be 
    public or a paid version. If you are having trouble adding a wiki to a repository,
    make sure your repo is public.
    
See [Edit a Git wiki](../../recipes/recipes-git-wiki/)



### Git wiki structure

By default, GitHub wikis are flat, with no hierarchy. Inside a repository, you can create folders and place individual wiki pages in them. These pages are simply separate files, where the filename becomes the page name.

# MkDocs

[MkDocs](https://www.mkdocs.org/) is a static site generator that turns directories of Markdown files into a searchable, presentable website. Customizable themes, many of them provided by the community, provide Markdown extensions for reusing content and for formatting such as tabs and admonitions. 

`Screenshot goes here`

See [Publish documentation with MkDocs](../../recipes/recipes-mkdocs/)

    
    
    
    
    MkDocs
        They have themes with different kind of extensions
        Very cool, extensible, easy, live preview
    Hugo
    Pandoc
        eBook
        PDF
        Word

A Git wiki bases the URLs for pages on the file hierarchy. Consider a wiki with the following files:

```
Home.md
stuff/
    something.md

```

The URL to `something.md` is: /wiki/stuff/something


You can also  publish [Slides](../tools-slides/)

## Hugo

## Pandoc

Everyone who installs a Markdown editor should install Pandoc.

Pandoc

- Concatenate files
- Extra directives it can do
- Make HTML
- eBook
- PDF
- Word
- Slides - see slides recipe
- Grab HTML as MD

https://pandoc.org/try/

### Slides in Pandoc
Making Slides with Pandoc: the Basics

Pandoc is an everything-to-everything converter, and one of its neatest tricks is turning Markdown into slides. If you can do simple things on the command line, you will have no trouble: Pandoc is easy to install and use.

When using Pandoc, you can start your Markdown file with YAML metadata or a simple block like this:

% Title
% Author Name
% Date

Then write some Markdown for your slides. Pandoc uses the following rule to figure out what header level to use for slide titles:

    By default, the slide level is the highest header level in the hierarchy that is followed immediately by content, and not another header, somewhere in the document. In the example above, level 1 headers are always followed by level 2 headers, which are followed by content, so 2 is the slide level. (source)

That seems a little complicated, so I played with the Markdown a bit to see what worked in different presentation formats. In general, an H1 or H2 header works for a section header or slide title. Most other Markdown works as you would expect. Some presentation tools work best if you separate slides with three hyphens (---).

Building a presentation with Pandoc is simple:

pandoc -t <format> -s myslides.md -o myslides.htm

Pandoc can build slides from several formats. I tried a few including S5, Slidy, and slideous. Ill focus on two in particular: DZslides and Powerpoint.

## Standalone presentation tools

Remark
DZslides

If you want to do one of those slick presentations with big images and very few words, [DZslides](http://paulrouget.com/dzslides/) is an easy way to do it.

