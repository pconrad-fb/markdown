---
title: 'Pandoc Tricks'
author: Peter Conrad
abstract: |
  Let's see what Pandoc can really do.
...

-----

# Control image size
![Picture of a bench](bench.jpg){width=25}
In Word and Powerpoint, doesn't seem to honor percent

-----

# Columns {#Cols}

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

Works in Powerpoint but not Word

-----

# Internal Links

You can link to headings in the document in either style (see [Columns](#Cols)). See [Columns]. You can also use implicit ones (see [Control image size]).

[Columns]: #Cols

-----

# Line Blocks

| This is for things
That should not wrap.

-----

# Numbered Example Lists

(@)  My first example will be numbered (1).
(@)  My second example will be numbered (2).

Explanation of examples.

(@)  My third example will be numbered (3).

(@good)  This is a good example.

Numbering works in Word but not Powerpoint

-----

# Linking to Examples

As (@good) illustrates, ...

-----

# Divs

::::: {#special .sidebar}
Here is a paragraph.

And another.
:::::

-----

::: Warning ::::::
This is a warning.

::: Danger
This is a warning within a warning.
:::
::::::::::::::::::

-----

# Spans

[This is *some text*]{.class key="val"}

-----

# Small caps

[Small caps]{.smallcaps}

<span class="smallcaps">Small caps</span>

<span style="font-variant:small-caps;">Small caps</span>

----- 