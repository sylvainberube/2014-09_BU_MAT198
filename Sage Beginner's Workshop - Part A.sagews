︠5582fd8f-1c81-4c61-b195-00ee2a5fdeddi︠
%html
<center><h1>Sage Beginner's Workshop</h1></center>
<center><h3> Part A </h3></center>

<p>
This is an introduction to the basic functionality of Sage, with an emphasis on seeing how to handle a worksheet and how to get more detailed help. We will point out a little bit of the power that Sage has hiding in it, but this is <b>not</b> a full-fledged tutorial. Down at the bottom of the page you will find links to some more resources.
</p>

<hr />

Note that this worksheet is based upon several earlier ones (Theron Hitchman, Harald Schilly, Gustav Delius...)

<hr />

<h2>Worksheet Basics</h2>

The first thing to note is that a worksheet is made up of "cells." These are where you will do your programming. To evaluate a cell, you press [Shift]+[Enter]. Try it now in the cell below. Add 5 and 4.
︡6cf07533-dddd-43a8-af86-de0ed8bf6d49︡{"html":"<center><h1>Sage Beginner's Workshop</h1></center>\n<center><h3> Part A </h3></center>\n\n<p>\nThis is an introduction to the basic functionality of Sage, with an emphasis on seeing how to handle a worksheet and how to get more detailed help. We will point out a little bit of the power that Sage has hiding in it, but this is <b>not</b> a full-fledged tutorial. Down at the bottom of the page you will find links to some more resources.\n</p>\n\n<hr />\n\nNote that this worksheet is based upon several earlier ones (Theron Hitchman, Harald Schilly, Gustav Delius...)\n\n<hr />\n\n<h2>Worksheet Basics</h2>\n\nThe first thing to note is that a worksheet is made up of \"cells.\" These are where you will do your programming. To evaluate a cell, you press [Shift]+[Enter]. Try it now in the cell below. Add 5 and 4.\n"}︡
︠8cd31a74-73ca-434a-996d-b2339b8f3160︠
5+4
︡0df7cc93-d233-4277-87ab-747b2c212463︡{"stdout":"9\n"}︡
︠df84264c-fbe7-43b9-97a2-45e094363aebi︠
%html
<p>
Note that the output is marked by a grey parenthesis on the left near the line numbers, and the inputs are separated by thin, grey horizontal rulings. Also, the active cell has a light grey/blue background cell.
</p>
<p>
Another way to evaluate a cell is to use the "run" button at the top of the worksheet. Depending on the width of your display, this button may or may not have the word "run" on it. If not, just look for the triangle pointing to the right.
</p>
<p>
Try that version now with the simple computation below.
<p>
︡0c01b62e-4d79-4de1-baf1-b29e659de74a︡{"html":"<p>\nNote that the output is marked by a grey parenthesis on the left near the line numbers, and the inputs are separated by thin, grey horizontal rulings. Also, the active cell has a light grey/blue background cell.\n</p>\n<p>\nAnother way to evaluate a cell is to use the \"run\" button at the top of the worksheet. Depending on the width of your display, this button may or may not have the word \"run\" on it. If not, just look for the triangle pointing to the right.\n</p>\n<p>\nTry that version now with the simple computation below.\n<p>\n"}︡
︠640cc705-2c35-4751-804b-62f46a23e2bf︠
67-5
︡4c4e6c62-c1b6-4706-8fbd-604fc633e715︡{"stdout":"62\n"}︡
︠aa88d77c-911e-4ea7-9316-8bb11a061c17i︠
%md
To keep things rolling, you will often need to create new cells. At the end of a worksheet this is done automatically: there is always a set of blank lines at the bottom of a <i>.sagews</i> file. If you somehow manage to evaluate the last line, the page should refresh with a new blank line below the output.

The other way to make a new cell also works in the middle of a worksheet. Use your mouse or trackpad to hover over one of the thin grey horizontal rulings which separate cells. The ruling should get highlighted in blue. At this point, clicking the highlighted ruling will create a new cell directly below that ruling.

Try it now. Make a new cell between the ones below.
︡892140e1-2bfa-4aa8-ab64-c85e80d642e5︡{"md":"To keep things rolling, you will often need to create new cells. At the end of a worksheet this is done automatically: there is always a set of blank lines at the bottom of a <i>.sagews</i> file. If you somehow manage to evaluate the last line, the page should refresh with a new blank line below the output.\n\nThe other way to make a new cell also works in the middle of a worksheet. Use your mouse or trackpad to hover over one of the thin grey horizontal rulings which separate cells. The ruling should get highlighted in blue. At this point, clicking the highlighted ruling will create a new cell directly below that ruling.\n\nTry it now. Make a new cell between the ones below.\n"}︡
︠22707caf-a45b-4edc-adeb-d3f6ce8ad86c︠
print('Do not touch this cell. Make a new one just below it!')
︡a8d986ca-5fd9-4eff-9575-02c25388f085︡{"stdout":"Do not touch this cell. Make a new one just below it!\n"}︡
︠9e2ced62-dee8-4f20-96a1-1eb4ff9ee6d8︠
2+2
︡e5330ebf-7f69-4c5f-94b9-705b78fa4b80︡{"stdout":"4\n"}︡
︠8dc9d3db-d6a8-4214-ae0a-6cc8429acfd0i︠
%md
It is possible to delete input cells, too. To do so, simply empty the cell and press [Backspace] or [Delete] in the active, empty cell. Try deleting a one or two of the cells just below.

Note that pressing [Backspace] at the beginning of a cell will also remove the horizontal bar between cells. This joins the two input cells into a single one. That trick might be useful to you at some point.


︠a702b99e-7120-425e-8f20-3a3f69d41de9i︠
%md
It is useful to annotate your work by typing text right into the page. To do this, there are several ways to do so, here I am using Markdown: If you open a cell (**double clik-me!**) with the "decorator" <kbd>%md</kbd> as the first line, the worksheet will evaluate that cell by interpreting the input following the Markdown specification, converting it to html, and displaying the html as output.

Basic [Markdown][md] is easy to learn. Even if you don't learn it, paragraphs typed in markdown will display roughly how you want them on this page. Don't focus on this.

After evaluation, the input for a Markdown or html cell will automatically hide. To reopen the input for editing, simply double click the displayed output. The text in this page has been generated with a mix of these two approaches, so you can double click them to see some examples of how this works.

[md]: http://daringfireball.net/projects/markdown/syntax "Markdown Syntax Page"
︡9dbd7111-8bef-49fd-b06f-c134a4f38b25︡{"md":"It is useful to annotate your work by typing text right into the page. To do this, there are several ways to do so, here I am using Markdown: If you open a cell (**double clik-me!**) with the \"decorator\" <kbd>%md</kbd> as the first line, the worksheet will evaluate that cell by interpreting the input following the Markdown specification, converting it to html, and displaying the html as output.\n\nBasic [Markdown][md] is easy to learn. Even if you don't learn it, paragraphs typed in markdown will display roughly how you want them on this page. Don't focus on this.\n\nAfter evaluation, the input for a Markdown or html cell will automatically hide. To reopen the input for editing, simply double click the displayed output. The text in this page has been generated with a mix of these two approaches, so you can double click them to see some examples of how this works.\n\n[md]: http://daringfireball.net/projects/markdown/syntax \"Markdown Syntax Page\"\n"}︡
︠fcb3580c-eb5e-4344-8e90-973561cd54b8︠

︠fc56969e-9a03-41d4-9ac9-d5e837a8981a︠










