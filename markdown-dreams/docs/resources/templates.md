# Templates

Use these templates as starting points for slide presentations.

## DZSlides

Save this text as a Markdown file, then use Pandoc to convert it to a DZSlides presentation. 

- See [Create a DZSlides presentation](../../recipes/recipes-slides-dzslides/)

```
% DZslides template for Pandoc
% Peter Conrad
% 26 November 2020

# Section titles

- H1 or H2
- Centered on slide
- Not much room below

<!-- 
  An H1 or H2 renders as a large title in the middle of the slide.
  There is room for a small number of bullets below, but it looks
  nicer with the title alone.
-->

---

How to do a slide

- Use \-\-\- to separate slides
- Use regular text and bullets
- H1 or H2 for a section title

<!--
  Regular text starts closer to the top of the slide.
  A normal text phrase plus bullets makes for a simple,
  attractive slide.
-->

---

# Images

---

You can use images.

 - Provide width and height
 - Keep them with the HTML file
 
![](bench.jpg){width=33% height=33%}

<!--
  If you omit width and height, the images tend to
  appear pixel-for-pixel at the resolution of the screen.
  This often means: very huge. Pandoc can resize the
  images for you.
  
  Remember that you need to keep the image files with your
  presentation's HTML file or they won't show up.
-->

---

![Full-screen image with alt text](bench.jpg){width=100% height=100%}

<!--
  For some reason, a full-screen image renders properly even if
  you omit the width and height tags. I have left them in to foster
  good habits.
-->

---

# Columns

---

:::::::::::::: {.columns}
::: {.column width="50%"}
Columns work


:::
::: {.column width="50%"}
**Lists** in columns don't work
![](../path/to/image.jpg){width=100% height=100%}
<!-- 100% of this column, that is -->
:::
::::::::::::::

<!--
  Pandoc supports multiple columns in slide shows.
  I get the impression that DZslides is designed to create
  a slide show with a very simple, uncluttered look.
  If you are using a lot of columns, you might consider
  a different slide format.
-->

---

# Syntax

---

Emphasis

- **bold**
- *italic*
- **_both_**
- ~~strike~~

---

> Blockquotes look like this

---


Lists

- Bullets work
  -  Indenting works
- Ordered lists don't
  - By themselves, they go to the left edge
  - As a sub-list, they outdent to the next level

---

Incremental "build" slides

::: incremental

- Incremental slides work
- This is how they look
- It's fine

:::

---

A slide with a pause can work.

. . . 

Or can it? 

---

Tables work but they are not well padded and they are stuck at the top left of the slide.


---

Don't use inline code or code blocks. They don't look quite right.

---

# Thank you

```

## PowerPoint

Save this as a Markdown file and then use Pandoc to convert it to a PowerPoint presentation.

- See [Create a PowerPoint presentation](../../recipes/recipes-slides)

```
% Pandoc Template for Powerpoint
% Peter Conrad
% 22 November 2020

# Section Title


## How to do a slide

You'll be happiest if you use:

* H1 for section titles
- H2 for slide titles
+ H3 for additional headings in slides

::: notes

Speaker notes go here

:::

## Two-column slide with image


:::::::::::::: {.columns}
::: {.column width="50%"}
Left column:

- Looks good
- Stays over here
- Lets the image do its thing
:::
::: {.column width="50%"}
![](bench.jpg)
:::
::::::::::::::

::: notes

Speaker notes go here

:::

## Table

| Heading | Heading | Heading | Heading | Heading |
| --- | --- | --- | --- | --- |
| Cell | Cell | Cell | Cell | Cell |
| Cell | Cell | Cell | Cell | Cell |
| Cell | Cell | Cell | Cell | Cell |
| Cell | Cell | Cell | Cell | Cell |
| Cell | Cell | Cell | Cell | Cell |

::: notes

Speaker notes go here

:::

## Limitations

Things that don't work

- HTML in your Markdown
- CSS
- Builds 
  - (pauses or incremental lists)
- Inline monospace

::: notes

Speaker notes go here

:::

## Things that work very well

- Images resize nicely (but don't fill the screen)
- Tables look nice
- You don't have to take your images with you

::: notes

Speaker notes go here

:::

## An image

![Alt text looks like this](../path/to/image.jpg){width=25%}

::: notes

Speaker notes go here

:::


## Headings

Headings H3 and lower look the same.

### H3
#### H4
##### H5
###### H6 

::: notes

Speaker notes go here

:::

## Emphasis


- **bold**
- *italic*
- **_both_**
- ~~strike~~

::: notes

Speaker notes go here

:::

## Bullet lists

- Bullets work
  -  Indenting works
- Don't try to do multiple lists on a single slide

## Ordered lists

1. Ordered lists work
   1. Sub-lists in ordered lists 
1. Next item

::: notes

Speaker notes go here

:::


# Thank you

```


## Remark

Copy and paste this template between the opening and closing `<textarea id="source">` tags in the Remark boilerplate HTML. 

- See [Create a Remark presentation](../../recipes/recipes-slides-remark/)

```
class: center, middle

# Title

---

# Agenda

1. Introduction
2. Deep-dive
3. ...

---

# Introduction

---

# Text alignment

.left[Left-aligned text]

.center[Centered text]

.right[Right-aligned text]

???
Speaker notes go here

---

# Images

You can use CSS and HTML to do images:

.center[<img src="bench.jpg" width=50% height=50%></img>]

---

background-image: url(bench.jpg)
background-size: contain

# Slide with background image

---

# Incremental slide

- You build bullet lists like this

--

- with two-dash separators

???
Speaker notes go here

--

{{content}}
- Incrementally

???
Speaker notes go here

--

- And with the \{\{content}} directive you can say where the next piece of content should go.

---

class: center, middle

# Thank you
```