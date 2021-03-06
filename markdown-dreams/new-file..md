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
    - 'Getting started': 
        - 'Concepts': 'getting-started/getting-started.md'
        - 'Git basics': 'getting-started/getting-started-git-basics.md'
    - 'Tools':
        - 'Markdown editors': 'tools/tools-editors.md'
        - 'Storage': 'tools/tools-storage.md'
        - 'Git': 'tools/tools-git.md'
        - 'Publishing': 
            - 'Publishing': 'tools/tools-publishing.md'
            - 'MkDocs': 'tools/tools-mkdocs.md'
    - 'Recipes':
#        - 'Overview': 'recipes/index.md'
        - 'Take notes': 'recipes/recipes-notes.md'
        - 'Run a Git wiki': 'recipes/recipes-git-wiki.md'
        - 'Collaborate using Git centralized workflow': 'recipes/recipes-centralized-workflow.md'
        - 'Manage docs with Gitflow': 'recipes/recipes-gitflow.md'
        - 'Create an eBook': 'recipes/recipes-pandoc-ebook.md'
        - 'Write a Word doc': 'recipes/recipes-pandoc-word.md'
        - 'Publish a PDF': 'recipes/recipes-pandoc-pdf.md'
        - 'Present slides': 'recipes/recipes-slides.md'
    - 'Resources': 'resources/index.md'
