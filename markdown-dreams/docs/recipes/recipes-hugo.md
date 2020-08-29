# Publish a website with Hugo

Different choices:

- Pandoc
- Others from my preso

## Ingredients

<table>
  <tr>
    <td><b><a href="../../tools/tools-editors/">Markdown editor</a></b></td>
  </tr>
  <tr>
    <td><b><a href="../../tools/tools-hugo/">Hugo</a></b></td>
  </tr>
  <tr>
    <td><b><a href="../../tools/tools-git-setup/">Git</a></b> (optional)</td>
  </tr>
</table>

!!! hint
    Hugo works best with Markdown files that are organized in  
    [Git wiki structure](../../tools/tools-publishing#git-wiki-structure).
    You can even use [Git wiki](../recipes-git-wiki/) to develop the content.

This recipe goes well with:

- Working by yourself on your local hard drive
- [Centralized Git workflow](../recipes-centralized-workflow/)
- [GitHub flow](../recipes-gitflow/)

Make sure yoiu have the ingredients for those as well

- Installing and creating the directory are easy:
  `sudo apt-get install hugo`
  But this got me 0.40 which wasn't compatible with the templates; I had to manually install 0.59 using `dpkg -i` from a downloaded archive
- `hugo new-site markdown` creates a directory called `markdown` with the basics in it
- Pick a theme, git-clone it into its own named dir in the `themes` dir
- Add `theme = <theme>` to `config.toml`
- Start it with `hugo server -D` (drafts enabled)
- Works, publishes, able to publish to just the markdown directory by setting base URL
- Image path `static/images` ... Markdown editor and Hugo see this path differently; Hugo ignores `static` so you can't see images in both the Markdown editor and Hugo.
- Then you have to FTP things up manually


It's not set up for docs so you don't necessarily get left nav (some themes do, some don't)

## Setting up your site

```
$ hugo new site markdown-hugo
Congratulations! Your new Hugo site is created in /home/pconrad/git/markdown/markdown-hugo.

Just a few more steps and you're ready to go:

1. Download a theme into the same-named folder.
   Choose a theme from https://themes.gohugo.io/ or
   create your own with the "hugo new theme <THEMENAME>" command.
2. Perhaps you want to add some content. You can add single files
   with "hugo new <SECTIONNAME>/<FILENAME>.<FORMAT>".
3. Start the built-in live server via "hugo server".

Visit https://gohugo.io/ for quickstart guide and full documentation.

```

- Configuration and preferences


```
$ git submodule add https://github.com/budparr/gohugo-theme-ananke.git themes/ananke
Cloning into '/home/pconrad/git/markdown/markdown-hugo/themes/ananke'...
remote: Enumerating objects: 8, done.
remote: Counting objects: 100% (8/8), done.
remote: Compressing objects: 100% (8/8), done.
remote: Total 1839 (delta 2), reused 1 (delta 0), pack-reused 1831
Receiving objects: 100% (1839/1839), 4.33 MiB | 1.26 MiB/s, done.
Resolving deltas: 100% (1022/1022), done.
```

Change the config file

```
pconrad@tinybox:~/git/markdown/markdown-hugo$ cat config.toml 
baseURL = "http://example.org/"
languageCode = "en-us"
title = "My New Hugo Site"
pconrad@tinybox:~/git/markdown/markdown-hugo$ echo 'theme = "ananke"' >> config.toml
pconrad@tinybox:~/git/markdown/markdown-hugo$ cat config.toml 
baseURL = "http://example.org/"
languageCode = "en-us"
title = "My New Hugo Site"
theme = "ananke"

```

## Working with content

You get a 404 unless you have both YAML and some content. Otherwise it's Git Wiki Structure

```
---
title: "My First Post"
date: 2020-08-28T18:42:02-07:00
draft: true
---

# Title
```


- Extra markdown stuff like short codes or extensions

## Local preview

Now, start the Hugo server with drafts enabled:

```
$ hugo server -D

                   | EN  
-------------------+-----
  Pages            | 41  
  Paginator pages  |  0  
  Non-page files   | 79  
  Static files     |  6  
  Processed images |  0  
  Aliases          |  0  
  Sitemaps         |  1  
  Cleaned          |  0  

Built in 158 ms
Watching for changes in /home/pconrad/git/markdown/markdown-hugo/{archetypes,content,data,layouts,static,themes}
Watching for config changes in /home/pconrad/git/markdown/markdown-hugo/config.toml
Environment: "development"
Serving pages from memory
Running in Fast Render Mode. For full rebuilds on change: hugo server --disableFastRender
Web Server is available at http://localhost:1313/ (bind address 127.0.0.1)
Press Ctrl+C to stop

Change detected, rebuilding site.
2020-08-28 18:45:46.771 -0700
Source changed "/home/pconrad/git/markdown/markdown-hugo/content/posts/my-first-post.md": WRITE
Total in 75 ms


```

### Images

relative to the MD file: ../img/whatever.png
relative to the URL: ../../img/whatever.png

MkDocs has the same thing but handles it for you.

## Publishing

- generating the site
- FTP it somewhere?