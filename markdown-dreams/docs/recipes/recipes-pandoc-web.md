# Grab a web page with Pandoc

Converting a web page to Markdown on the fly is a small task that can be very helpful if you need to grab content for editing or add information from the web to your notes.

## Ingredients

<table>
  <tr>
    <td><b><a href="../../tools/tools-editors/">Markdown editor</a></b></td>
  </tr>
  <tr>
    <td><b><a href="../../tools/tools-pandoc/">Pandoc</a></b></td>
  </tr>
</table>

## Syntax

The command is very simple:

```
pancod -s -r html <URL> -o <Markdown filename>
```

Example:

```
pandoc -s -r html http://www.peterconrad.com/markdown/ -o markdown.md
```


## Result

The result is a Markdown file converted from the web page. Because most modern web pages include a lot of code in addition to the human-readable content, you might have to do a little cleanup. However, you can see that the content is easy to read and convenient to copy and paste to another Markdown file. Pandoc tries its best to convert the `<div>` tags and their attributes to its own fenced div notation, which makes even the extra junk more readable as well.

![Screenshot of web page and Markdown result](../img/grab-web-page.png)