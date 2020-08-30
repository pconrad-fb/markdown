# Manage docs with GitHub Flow

Once your team or project reaches a certain size, branching is a good way to keep people from accidentally interfering with each other's work. It's also a great way to stage and test code or content before migrating to production. There are many branching strategies, some of them quite complicated. The one I like, and that I have used for documentation in the past, is called [GitHub Flow](https://scottchacon.com/2011/08/31/github-flow.html). It's simple but effective. The **Pull-Work-Commit-Push** steps happen within a working branch.

![Diagram of GitHub flow](../img/github-flow.png)

## What you need

<table>
  <tr>
    <td><b><a href="../../tools/tools-editors/">Markdown editor</a></b></td>
  </tr>
  <tr>
    <td><b><a href="../../tools/tools-git-setup/">Git</a></b></td>
  </tr>
  <tr>
    <td><b><a href="../../tools/tools-publishing/">Publishing tools</a></b></td>
  </tr>
</table>

!!! hint
    Plan ahead based on the publishing tool you want to use. 
    If you're planning to use a wiki, MkDocs, or Hugo, organize your docs in 
    [Git wiki structure](../../tools/tools-publishing#git-wiki-structure) and
    add YAML frontmatter from the start. If you're creating large documents with
    Pandoc, think about whether you need to work on content in pieces and 
    then use Pandoc to assemble everything.

## Working with content

[Pick an editor](../../tools/tools-editors/), then make sure you have Git set up and try each step below. The steps work together like a heartbeat that keeps content safe and synchronized for all collaborators.
--8<-- "github-flow-snippet.html"

!!! hint
    After you're done with that part of the project, you can delete your working branch
    or keep it around for further work. Before starting work on a different part of the
    project, remember to switch to `master` and pull again.
    
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