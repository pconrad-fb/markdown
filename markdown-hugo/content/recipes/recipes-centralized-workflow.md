# Collaborate using centralized Git workflow

You can use Git to help a team collaborate on informal or internal documents in a very simple way. If you use a graphical Git client and a WYSIWYG Markdown editor, the workflow is easy enough for people who don't want complicated technical procedures to get in the way of their work. At the same time, Markdown in Git is easy for engineers to work with in their own tools.


This is great for an informal thing of collaborating on a website, doc set, or make an eBook, PDF, Word doc (made up of several files) - can even do Pandoc slides if you break it up and then use Pandoc to concatenate

Although a git repository comes with a separate wiki repository, you might sometimes want to collaborate on content without the constraints of storing it in a wiki.
In other words, [Running a Git wiki](../recipes-git-wiki) is a easy way to create, edit, and view a lot of content&mdash;but using other tools to work with content on your own computer, using a Git repository only for source control, is a much more robust way to collaborate. 

For non-production content such as specifications, planning documents, newsletters, internal documentation, and the like, you can use a simple single-branch strategy called the centralized Git workflow.

![](../img/git-centralized-workflow.png)

If you're publishing a complex website or documentation set with a team of collaborators, you should consider using [Manage docs with Gitflow](../recipes-gitflow/) instead.

## Ingredients

<table>
  <tr>
    <td><b><a href="../../tools/tools-editors/">Markdown editor</a></b></td>
  </tr>
  <tr>
    <td><b><a href="../../tools/tools-git-setup/">Git</a></b></td>
  </tr>
    <tr>
    <td><b><a href="../../tools/tools-publishing/">Publishing tools</a></b> (optional)</td>
  </tr>
</table>

!!! hint
    Plan ahead based on the publishing tool you want to use. 
    If you're planning to use a wiki, MkDocs, or  Hugo, organize your docs in 
    [Git wiki structure](../../tools/tools-publishing#git-wiki-structure)
    from the start. If you're creating documents with Pandoc, think about
    whether you need to work on content in pieces and then use Pandoc to assemble
    everything.
    
## Working with content

This recipe uses the centralized Git workflow. [Pick an editor](../../tools/tools-editors/), then make sure you have Git set up and try each step below. The steps work together like a heartbeat that keeps content safe and synchronized for all collaborators.

--8<-- "centralized-workflow-snippet.html"

If you need to [Publish content](../../tools/tools-publishing/), you can use one of these recipes:

+ [Publish documentation with MkDocs](../recipes-mkdocs/)
+ [Publish a website with Hugo](../recipes-mkdocs/)
+ [Create a document with Pandoc](../recipes-pandoc/)

!!! hint
    Remember not to publish content into a Git repository. The repo is only for storing
    your Markdown and other source files.

## Next steps

Check out the following recipes  :

- [Manage docs with Gitflow](../recipes-gitflow/)
- [Create an eBook](../recipes-pandoc-ebook/)
- [Write a Word doc](../recipes-pandoc-word/)
- [Publish a PDF](../recipes-pandoc-pdf/)
- [Present slides](../recipes-slides/)
