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
	../recipes/recipes-slides.md \
	../recipes/recipes-slides-dzslides.md \
	../recipes/recipes-slides-remark.md \
	../resources/markdown-cheatsheet.md \
	../resources/resources-glossary.md \
	../resources/templates.md \
	../resources/links.md
