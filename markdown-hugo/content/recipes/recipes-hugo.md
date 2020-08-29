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

## Setting up your site

- Configuration and preferences

## Working with content

- Extra markdown stuff like short codes or extensions

## Publishing

- generating the site
- FTP it somewhere?