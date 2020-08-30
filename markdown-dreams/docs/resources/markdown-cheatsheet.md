# Markdown cheatsheet

<table>
  <tr>
    <td><b>Headers</b></td>
    <td>
      <pre>
# H1
## H2
### H3
#### H4
##### H5
###### H6
      </pre>
    </td>
  </tr>
  <tr>
    <td><b>Line breaks and paragraphs</b></td>
    <td>
      <pre>
Consecutive lines
of any length
run together and become a single paragraph.

An empty line ends the paragraph and starts a new one.

Two spaces at the end of a line  
Forces a line break without  
Starting a new paragraph.
      </pre>
    </td>
  </tr>
  <tr>
    <td><b>Text effects</b></td>
    <td>
      <pre>
*emphasis* (italics)
_emphasis_ (italics)
**strong** (bold)
__strong__ (bold)
**combined _emphasis_**
`code`
~~strikethrough~~
      </pre>
    </td>
  </tr>
  <tr>
    <td><b>Lists</b></td>
    <td>
      <pre>
Bullet list:

* Asterisks, plus signs, or minus signs

  Indent two spaces to add another paragraph in a list item
* Another list item

Numbered list:

1. The numbers don't matter.
1. Markdown numbers when it renders
      
   Indent three spaces to add another paragraph in a list item
1. Lists inside lists:
   * Ordered and unordered lists work
      </pre>
    </td>
  </tr>
  <tr>
    <td><b>Links</b></td>
    <td>
      You can define links inline or by reference. Reference links have a
      label&mdash;text or a number, like this:
      <code>[1]</code>
      <pre>
This is an [inline-style link](https://www.example.com).
A link can have a [title](https://www.example.com "Example title").
Links can be defined later by [reference][label text or number].   
     
...

[label text or number]: https://www.example.com/any/label/text/is/fine
      </pre>
    </td>
  </tr>
  <tr>
    <td><b>Images</b></td>
    <td>
      You define an image just like a link, but with an exclamation mark.
      <pre>
Inline: ![alt text](https://www.example.com/images/some-image.png).
Reference ![alt text][label text].  
      
...

[label text]: https://www.example.com/images/some-image.png
      </pre>
    </td>
  </tr>
  <tr>
    <td><b>Code blocks</b></td>
    <td>
      There are two ways to create code blocks, both of which can be embedded in lists.
      <pre>
In standard Markdown, indent by 4 spaces:

    10 PRINT "HELLO"
    20 GOTO 10

Many Markdown flavors provide the capability to do a fenced code block, 
surrounded by three backticks. You can indicate the language for syntax
highlighting:

&#96;`` basic

10 PRINT "HELLO"
20 GOTO 10

&#96;``
      </pre>
    </td>
  </tr>
  <tr>
    <td><b>Blockquotes</b></td>
    <td>
      <pre>
> Use a greater-than sign plus a space at the beginning of a paragraph.  
You can add it to the start of every line, or just the first line in the  
paragraph.

> But it looks better to put it at the start of every line. This makes it  
> easier to see which lines are part of the blockquote.
      </pre>
    </td>
  </tr>
  <tr>
    <td><b>Tables</b></td>
    <td>
      Some flavors of Markdown include simple table syntax.  
      Default alignment is left.
      <pre>
| Header          | Row is          | mandatory          |
| --------------- |:---------------:| ------------------:|
| Separate header | Colons on both  | Colon on the right |
| from other rows | sides align the | aligns the row to  |
| with hyphens    | row to center   | the right          |
      </pre>
    </td>
  </tr>
  <tr>
    <td><b>Horizontal rule</b></td>
    <td>
      Three ways to add a horizontal rule&mdash;three or more hyphens, asterisks, or underscores:
      <pre>
---

***

___
      </pre>
    </td>
  </tr>
  <tr>
    <td><b>Comments</b></td>
    <td>
    There are two ways to write comments: HTML-style comments, which are rendered as  
    part of the HTML source code, and two kinds of link-style comments that are a bit  
    of a hack and don't get rendered at all. 
      <pre>
&lt;!-- HTML-style comments --&gt; 
  are visible in Markdown and in rendered HTML.  
  
[//]: # "This comment" 
  is only visible in the Markdown and doesn't get rendered.  
  
[comment]: <> "This comment" 
  is only visible in the Markdown and doesn't get rendered.  
      </pre>
    </td>
  </tr>
  <tr>
    <td><b>HTML and special characters</b></td>
    <td>
    HTML is part of Markdown. You can use HTML to insert tables, formatting, special  
    characters, and other features that Markdown doesn't support directly. HTML tables  
    are often better and easier than Markdown tables. You can escape characters  
     with a backslash (\) or use HTML codes:
      <pre>
&amp;mdash; em-dash  
&amp;ndash; en-dash  
&amp;#35; octothorpe  
&amp;#42; asterisk  
      </pre>
    </td>
  </tr>
</table>


