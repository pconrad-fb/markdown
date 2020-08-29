---
title: Create a Remark presentation
date: 2020-08-28T18:42:02-07:00
draft: true
myvariable: whatever

---


![](../../iaj/bitbucket-pull-request-buttons.png)
![](../img/avatar.png)
![](../../static/images/slides-remark.png)
![](../../static/images/slides-remark.png)
![](../../immij/slides-remark.png)

## Ingredients
{{ .Get "draft" }}
{{ $Param.myvariable . }}

1: {{my_variable}}

{{ .Date }}

{{< highlight html >}}
<section id="main">
  <div>
   <h1 id="title">{{ .Title }}</h1>
    {{ range .Pages }}
        {{ .Render "summary"}}
    {{ end }}
  </div>
</section>
{{ .Params.date }}
{{< /highlight >}} 
 
<table>
  <tr>
    <td><b><a href="../../tools/tools-editors/">Markdown editor</a></b></td>
  </tr>
  <tr>
    <td><b><a href="../../tools/tools-publishing/#remark">Remark.js</a></b></td>
  </tr>
</table>




## Remark

If you don’t want to use Pandoc, consider Remark: a standalone slide presentation that you edit directly. Because it uses Markdown nestled inside an HTML document, your favorite Markdown editor might get confused. Mine did. This makes it a little less convenient to edit.

On the other hand, you don’t need Pandoc — so you don’t need a computer — so if you are stuck in an airport with nothing but your phone, Remark might just be your smartest choice.

The Markdown is a little different, but shouldn’t look unfamiliar by now:

```
class: center, middle

# Remark template
.right[Author]
.right[Date]

---

# Slide title

Normal text:

* Bullet
* Bullet
* Bullet

???
Speaker notes go here

---

```

Remark provides some rudimentary CSS to style slides. The first slide uses an H1 header as a section header. The simplified CSS code class: center, middle puts it in the middle of the slide. I added smaller text for the author and date, using .right to right-align it. You can use.right, .left, and .center to align text in different positions on the slide. This does not mean you can easily create columns in Remark. You can do it, but it requires authoring more complicated CSS.

You can use H1 or H2 for slide titles — I prefer H1. Speaker notes are set off with ??? and the usual --- separator denotes slide boundaries.

![](../../immij/slides-remark.png)

You don’t have to build a Remark presentation; it just is. You can open it in a text editor and a browser. Any changes you save from the text editor show up in the browser when you reload. Like other browser-based slide tools, remember that you need to keep your images where the HTML expects to find them.

There is one important choice to make with Remark: you can work with a standalone presentation containing the entire JavaScript that makes it work; a standalone presentation that references the JavaScript from another local file; or a presentation that references the JavaScript from online. The first option is longest but most “standalone,” and the last is the shortest (and therefore easiest to edit) but requires connectivity.

