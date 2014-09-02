︠565cce02-0556-4dee-8c53-798724cba9c4i︠
%md
<center><h4>Bishop's University<br/>
Mathematics Department<br/>
2014 Fall Semester</h4></center>

<center><h4><strong>MAT 198 – Calculus I (for Life Sciences)</strong><br/>
Sylvain Bérubé</h4></center>

<hr/>

<center><h1>Sage Beginner's Workshop</h1></center>
<center><h3> Part A </h3></center>
<hr />
<p>
This is an introduction to the basic functionality of Sage, with an emphasis on seeing how to handle a worksheet and how to get more detailed help. We will point out a little bit of the power that Sage has hiding in it, but this is not a full-fledged tutorial. Down at the bottom of the page you will find links to some more resources.
</p>

<hr />

Note that this worksheet is based upon several earlier ones (Theron Hitchman, Harald Schilly, Gustav Delius, Juan-Carlos Bustamante...)

<hr />

<h2>Worksheet Basics</h2>

The first thing to note is that a worksheet is made up of "cells." These are where you will do your programming. <strong>To evaluate a cell, you press [Shift]+[Enter].</strong> Try it now in the cell below. Add 5 and 4.

︡f8eea501-d4de-44fb-a5e2-60376fbff2e5︡{"md":"<center><h4>Bishop's University<br/>\nMathematics Department<br/>\n2014 Fall Semester</h4></center>\n\n<center><h4><strong>MAT 198 – Calculus I (for Life Sciences)</strong><br/>\nSylvain Bérubé</h4></center>\n\n<hr/>\n\n<center><h1>Sage Beginner's Workshop</h1></center>\n<center><h3> Part A </h3></center>\n<hr />\n<p>\nThis is an introduction to the basic functionality of Sage, with an emphasis on seeing how to handle a worksheet and how to get more detailed help. We will point out a little bit of the power that Sage has hiding in it, but this is not a full-fledged tutorial. Down at the bottom of the page you will find links to some more resources.\n</p>\n\n<hr />\n\nNote that this worksheet is based upon several earlier ones (Theron Hitchman, Harald Schilly, Gustav Delius, Juan-Carlos Bustamante...)\n\n<hr />\n\n<h2>Worksheet Basics</h2>\n\nThe first thing to note is that a worksheet is made up of \"cells.\" These are where you will do your programming. <strong>To evaluate a cell, you press [Shift]+[Enter].</strong> Try it now in the cell below. Add 5 and 4.\n\n"}︡
︠865f2e9b-c5e8-45a3-ada9-e0c87dfb90da︠
5 + 4
︠b26f46de-c8b2-4e80-8d4e-caac7bd137e7i︠
%md

Note that the output is marked by a grey parenthesis on the left near the line numbers, and the inputs are separated by thin, grey horizontal rulings. Also, the active cell has a light grey/blue background cell.

Another way to evaluate a cell is to use the "run" button at the top of the worksheet. Depending on the width of your display, this button may or may not have the word "run" on it. If not, just look for the triangle pointing to the right.

Try that version now with the simple computation below.
︡662ac1de-054e-40ae-b661-3aac4b023f60︡{"md":"\nNote that the output is marked by a grey parenthesis on the left near the line numbers, and the inputs are separated by thin, grey horizontal rulings. Also, the active cell has a light grey/blue background cell.\n\nAnother way to evaluate a cell is to use the \"run\" button at the top of the worksheet. Depending on the width of your display, this button may or may not have the word \"run\" on it. If not, just look for the triangle pointing to the right.\n\nTry that version now with the simple computation below.\n"}︡
︠2fe6678a-26d9-4cca-bf55-359705b22ffe︠
67 - 5
︠a63a7ad4-449e-43f7-aef6-57eab4faef62i︠
%md
To keep things rolling, you will often need to create new cells. At the end of a worksheet this is done automatically: there is always a set of blank lines at the bottom of a <i>.sagews</i> file. If you somehow manage to evaluate the last line, the page should refresh with a new blank line below the output.

The other way to make a new cell also works in the middle of a worksheet. Use your mouse or trackpad to hover over one of the thin grey horizontal rulings which separate cells. The ruling should get highlighted in blue. At this point, clicking the highlighted ruling will create a new cell directly below that ruling.

Try it now. Make a new cell between the ones below.
︡cb94853e-4fe4-4754-8311-cb60abd18ef7︡{"md":"To keep things rolling, you will often need to create new cells. At the end of a worksheet this is done automatically: there is always a set of blank lines at the bottom of a <i>.sagews</i> file. If you somehow manage to evaluate the last line, the page should refresh with a new blank line below the output.\n\nThe other way to make a new cell also works in the middle of a worksheet. Use your mouse or trackpad to hover over one of the thin grey horizontal rulings which separate cells. The ruling should get highlighted in blue. At this point, clicking the highlighted ruling will create a new cell directly below that ruling.\n\nTry it now. Make a new cell between the ones below.\n"}︡
︠701d7a3f-87e0-426d-96e4-33f4562d3a85︠
print('Do not touch this cell. Make a new one just below it.')
︡a292f5d4-07b1-426e-b241-5ad723430a9b︡{"stdout":"Do not touch this cell. Make a new one just below it.\n"}︡
︠2bd3a633-a84f-4702-aef7-51d7d753b768i︠
%md
It is useful to annotate your work by typing text right into the page. To do this, there are several ways to do so, here I am using Markdown: If you open a cell (**double clik-me!**) with the "decorator" <kbd>%md</kbd> as the first line, the worksheet will evaluate that cell by interpreting the input following the Markdown specification, converting it to html, and displaying the html as output.

Basic [Markdown][md] is easy to learn. Even if you don't learn it, paragraphs typed in markdown will display roughly how you want them on this page. Don't focus on this.

After evaluation, the input for a Markdown or html cell will automatically hide. To reopen the input for editing, simply double click the displayed output. The text in this page has been generated with a mix of these two approaches, so you can double click them to see some examples of how this works.

That's it for Sage Beginner’s Workshop Part A.

[md]: http://daringfireball.net/projects/markdown/syntax "Markdown Syntax Page"
︡cf1f2bb3-e6dc-42f7-8644-8a8bd351aaac︡{"md":"It is useful to annotate your work by typing text right into the page. To do this, there are several ways to do so, here I am using Markdown: If you open a cell (**double clik-me!**) with the \"decorator\" <kbd>%md</kbd> as the first line, the worksheet will evaluate that cell by interpreting the input following the Markdown specification, converting it to html, and displaying the html as output.\n\nBasic [Markdown][md] is easy to learn. Even if you don't learn it, paragraphs typed in markdown will display roughly how you want them on this page. Don't focus on this.\n\nAfter evaluation, the input for a Markdown or html cell will automatically hide. To reopen the input for editing, simply double click the displayed output. The text in this page has been generated with a mix of these two approaches, so you can double click them to see some examples of how this works.\n\nThat's it for Sage Beginner’s Workshop Part A.\n\n[md]: http://daringfireball.net/projects/markdown/syntax \"Markdown Syntax Page\"\n"}︡
︠fcb3580c-eb5e-4344-8e90-973561cd54b8︠









