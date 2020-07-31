% Pandoc Template for Powerpoint
% Peter Conrad
% 22 November 2019

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

![Alt text looks like this](bench.jpg){width=25%}

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

## Code

JavaScript:

```javascript
var s = "JavaScript syntax highlighting";
alert(s);
```
 
Python:

```python
s = "Python syntax highlighting"
print s
```

Something else:
 
```
No language indicated, so no syntax highlighting. 
But let's throw in a <b>tag</b>.
```
::: notes

Speaker notes go here

:::

## Blockquotes

Blockquotes look like this.

> Here is a blockquote


::: notes

Speaker notes go here

:::



# Thank you
