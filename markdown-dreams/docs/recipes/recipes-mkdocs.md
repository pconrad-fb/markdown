# Publish documentation with MkDocs

Different choices:

- Pandoc
- Others from my preso



## Ingredients

<table>
  <tr>
    <td><b><a href="../../tools/tools-editors/">Markdown editor</a></b></td>
  </tr>
  <tr>
    <td><b><a href="../../tools/tools-mkdocs/">MkDocs</a></b></td>
  </tr>
  <tr>
    <td><b><a href="../../tools/tools-git-setup/">Git</a></b> (optional)</td>
  </tr>
</table>

!!! hint
    MkDocs works best with Markdown files that are organized in  
    [Git wiki structure](../../tools/tools-publishing#git-wiki-structure).
    You can even use [Git wiki](../recipes-git-wiki/) to develop the content.

This recipe goes well with:

- Working by yourself on your local hard drive
- [Centralized Git workflow](../recipes-centralized-workflow/)
- [GitHub flow](../recipes-gitflow/)

Make sure yoiu have the ingredients for those as well

## Setting up your site



- add a theme
- Themes sometimes add extensions like the Python ones
- Command for new site
- Store in git, just local, whatever




```

site_name: Markdown Dreams

theme:
  name: material

markdown_extensions:
  - admonition
  - pymdownx.details
  - pymdownx.superfences
  - def_list
  - pymdownx.tasklist:
      custom_checkbox: true
  - meta
  - pymdownx.tabbed
  - pymdownx.highlight:
      use_pygments: true
  - pymdownx.snippets

nav:
    - 'How to do things with Markdown': 'index.md'
    - 'Getting started': 'getting-started/index.md'
    - 'Tools':
        - 'Markdown editors': 'tools/tools-editors.md'
        - 'Source control': 'tools/tools-git.md'
        - 'Publishing': 'tools/tools-publishing.md'
    - 'Recipes':
        - 'Overview': 'recipes/index.md'
        - 'Run a Git wiki': 'recipes/recipes-git-wiki.md'
        - 'Collaborate with a distributed workflow': 'recipes/recipes-distributed-workflow.md'
        - 'Manage docs with Gitflow': 'recipes/recipes-gitflow.md'
        - 'Create an eBook': 'recipes/recipes-pandoc-ebook.md'
        - 'Write a Word doc': 'recipes/recipes-pandoc-word.md'
        - 'Publish a PDF': 'recipes/recipes-pandoc-pdf.md'
        - 'Present slides': 'recipes/recipes-slides.md'
    - 'Resources': 'resources/index.md'


```


- Talk about how creating the Nav was interesting - have to restart the server when you do
- Pick a snippets directory

- Snippets, okay, but base_path is a pain. They don't tell you wnat it is. It's relative to the directory you crated with the `mkdocs new` or whatever. So my recommendation is to make a dir called `snippets` and then do this:
  ```
    - pymdownx.snippets:
        base_path: 'snippets/'
  ```

## Working with content

- Extra markdown stuff like short codes or extensions
- 
- Show screen shot of previewing live in MkDocs

- You can use HTML but not MD inside HTML
- Links are a pain but it tells you what links are broken
- How to do themes
- Local preview keeps up wiht changes but you have to restart if you change the nav or add a page

  Also, you have to rrestart the server when you add or change a snippet, and also if you start using stnippets, you're fgettting away from a situation where you can publish in other formats.


```
$ mkdocs serve
INFO    -  Building documentation... 
INFO    -  Cleaning site directory 
INFO    -  The following pages exist in the docs directory, but are not included in the "nav" configuration:
  - getting-started/index.md
  - recipes/index.md
  - recipes/recipes-distributed-workflow.md
  - recipes/recipes-setup-git.md
  - resources/resources-glossary.md
  - tools/index.md 
WARNING -  Documentation file 'recipes/recipes-centralized-workflow.md' contains a link to 'recipes-gitflow.md' which is not found in the documentation files. 
WARNING -  Documentation file 'recipes/recipes-centralized-workflow.md' contains a link to 'recipes-pandoc-ebook.md' which is not found in the documentation files. 
WARNING -  Documentation file 'recipes/recipes-centralized-workflow.md' contains a link to 'recipes-pandoc-word.md' which is not found in the documentation files. 
WARNING -  Documentation file 'recipes/recipes-centralized-workflow.md' contains a link to 'recipes-pandoc-pdf.md' which is not found in the documentation files. 
WARNING -  Documentation file 'recipes/recipes-centralized-workflow.md' contains a link to 'recipes-slides.md' which is not found in the documentation files. 
WARNING -  Documentation file 'recipes/recipes-gitflow.md' contains a link to 'recipes-gitflow.md' which is not found in the documentation files. 
WARNING -  Documentation file 'recipes/recipes-gitflow.md' contains a link to 'recipes-pandoc-ebook.md' which is not found in the documentation files. 
WARNING -  Documentation file 'recipes/recipes-gitflow.md' contains a link to 'recipes-pandoc-word.md' which is not found in the documentation files. 
WARNING -  Documentation file 'recipes/recipes-gitflow.md' contains a link to 'recipes-pandoc-pdf.md' which is not found in the documentation files. 
WARNING -  Documentation file 'recipes/recipes-gitflow.md' contains a link to 'recipes-slides.md' which is not found in the documentation files. 
INFO    -  Documentation built in 1.82 seconds 
[I 200728 20:45:18 server:296] Serving on http://127.0.0.1:8000
INFO    -  Serving on http://127.0.0.1:8000
[I 200728 20:45:18 handlers:62] Start watching changes
INFO    -  Start watching changes
[I 200728 20:45:18 handlers:135] Browser Connected: http://127.0.0.1:8000/recipes/recipes-centralized-workflow/
INFO    -  Browser Connected: http://127.0.0.1:8000/recipes/recipes-centralized-workflow/
```


## Publishing

- generating the site
- FTP it somewhere?