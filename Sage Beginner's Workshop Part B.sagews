︠5582fd8f-1c81-4c61-b195-00ee2a5fdeddi︠
%html
<center><h4>Bishop's University<br/>
Mathematics Department<br/>
2014 Fall Semester</h4></center>

<center><h4><strong>MAT 198 – Calculus I (for Life Sciences)</strong><br/>
Sylvain Bérubé</h4></center>

<hr/>

<center><h1>Sage Beginner's Workshop </h1></center>
<center><h3> Part B </h3></center>
︡1e1bc039-dc72-41b8-a1c9-ca39e7a9f10f︡{"html":"<center><h4>Bishop's University<br/>\nMathematics Department<br/>\n2014 Fall Semester</h4></center>\n\n<center><h4><strong>MAT 198 – Calculus I (for Life Sciences)</strong><br/>\nSylvain Bérubé</h4></center>\n\n<hr/>\n\n<center><h1>Sage Beginner's Workshop </h1></center>\n<center><h3> Part B </h3></center>\n"}︡
︠e37895f9-f78b-4ffe-b32d-be1cbd5e1ef7i︠
%md
### Sage as a Calculator ###

Arithmetic works just as you would expect. The basic operations are $+$ for addition, $-$ for subtraction, $*$ for multiplication, $/$ for division, and $\hat{\ }$ for exponentiation. Try that out now. Make some cells and evaluate some basic arithmetic operations.
︡685c5511-9def-4b9f-8f91-54a4a39af9b8︡{"md":"### Sage as a Calculator ###\n\nArithmetic works just as you would expect. The basic operations are $+$ for addition, $-$ for subtraction, $*$ for multiplication, $/$ for division, and $\\hat{\\ }$ for exponentiation. Try that out now. Make some cells and evaluate some basic arithmetic operations.\n"}︡
︠0313740d-030e-4f59-850c-4855efba4477︠
(1 + 2 * 3 / 4 + 3/2)
︠35708877-f87d-43ce-b3b1-ae9fc880d419i︠
%md
Note that sage tries to remember what kind of object you are working with, so 4/5 is kept as a rational number in that form: 4/5. But if you give it a decimal expression, Sage will use finite precision arithmetic.

If you want to get a numerical (decimal) approximation to a number that is expressed differently, you can use the `.n()` method. This method has an option to change how many digits you want displayed. Here are some examples, all in a line. [This demonstrates how to get one compute cell to display several computations---separate them by semicolons.]
︡e7dc9abc-87f1-4491-8f1c-86fda0a9adfd︡{"md":"Note that sage tries to remember what kind of object you are working with, so 4/5 is kept as a rational number in that form: 4/5. But if you give it a decimal expression, Sage will use finite precision arithmetic.\n\nIf you want to get a numerical (decimal) approximation to a number that is expressed differently, you can use the `.n()` method. This method has an option to change how many digits you want displayed. Here are some examples, all in a line. [This demonstrates how to get one compute cell to display several computations---separate them by semicolons.]\n"}︡
︠d5f515c8-2075-4676-aedf-42e7321e7fa8︠
4/5;
.75;
(4/5).n();
pi.n(digits=300);
︠e608b624-5042-4ff7-94c0-c6eb15ef7217i︠
%md
Sage can also be used as a *symbolic* calculator. For this to work, you have to tell Sage the names of things it should consider as symbolic variables. After that, you can create an manipulate expressions in a variety of ways.
︡8632a6ec-5270-4eb8-8b0c-104993e3d0f1︡{"md":"Sage can also be used as a *symbolic* calculator. For this to work, you have to tell Sage the names of things it should consider as symbolic variables. After that, you can create an manipulate expressions in a variety of ways.\n"}︡
︠4625fbee-e423-4b57-88ff-733e2e62dbcb︠
x = var('x');
expr = 1 / (1-x^2);
expr;
︡b3dc1600-951d-40fb-8951-f884192616d1︡{"tex":{"tex":"-\\frac{1}{x^{2} - 1}","display":true}}︡
︠da7ddeb4-f9db-4fb6-bfb7-fa7794af333ci︠
%md
This is not so beautiful. One option is to ask SAGE to show us this expression correctly, type `show(expr)`
︡3d3afea7-277e-4234-9d20-e7032c54f381︡{"md":"This is not so beautiful. One option is to ask SAGE to show us this expression correctly, type `show(expr)`\n"}︡
︠55b6f678-6e6e-497a-945a-d560a100020b︠
show(expr);
︠3feb44b5-63fd-430c-b19c-f66d50dc5c7di︠
%md
Great! Isn't? There is another way to do this, instead of typing the `show()` command everytime, you might want to turn on the typesetting option by entering `typeset_mode(True)`. Try it, then type again `expr`.
︡3fe75a2c-566c-4390-93eb-e8df3d6e0b26︡{"md":"Great! Isn't? There is another way to do this, instead of typing the `show()` command everytime, you might want to turn on the typesetting option by entering `typeset_mode(True)`. Try it, then type again `expr`."}︡
︠2b4f92e6-ab3b-4c5f-b861-c8c3bcad04b6︠
typeset_mode(True);
expr;
︠bf16cc31-8f12-4d84-8bbc-087565e79150︠
︡9f6f6efc-2581-49e2-8c1a-271bb39ac15a︡{"md":"You can turn this off by typing `typeset_mode(False)`. If you type\n\n\t%auto\n\ttypeset_mode(True)\n\nat the top of the sheet... well, you can guess what will happen.\n"}︡
︠9599385f-a2de-481b-9e64-7dc9613049e3︠
typeset_mode(True);
expr2 = - expr + expr^3;
expr2;
︠9d546f1b-2521-4204-9a20-fc89d52d90eai︠
%md
An important part of Sage's capabilities for symbolic expressions is the ability to simplify.
︡1276c1f2-3695-463d-9270-1009fc885fb6︡{"html":"<p>An important part of Sage&#8217;s capabilities for symbolic expressions is the ability to simplify.</p>\n"}︡
︠93c70ef4-e4c3-4ce5-8d61-01526f8cb476︠
expr2.simplify_rational()
︠530007f3-15f9-4236-a10e-e2be3437eb29i︠
%md
Declaring and using functions and is quite natural. I  want do define the function $f(x) = (x+1)^2$, and the compute, say $f(2)$, I proceed as follows:
︡2117fda1-bc7d-4536-acf3-e297e2d67c8b︡{"md":"Declaring and using functions and is quite natural. I  want do define the function $f(x) = (x+1)^2$, and the compute, say $f(2)$, I proceed as follows:\n"}︡
︠4762c5dc-f62f-4d18-a21e-534c59056579︠
f(x) = (x + 1)^2 - 4;
f;
f(2);
︠269ef94c-8f1c-476b-b024-4912a857d660i︠
%md
Note the difference, $f$ is the function that maps each value to the sequare of what is obtained by adding one to that value. The symbol $\mapsto$ is read "maps to". On the other hand $f(2)$ is the result of evaluation $f$ at $2$.

<hr>

An important thing to know is that in order to use variables, they should be declared. Try computing $f(t)$
︡33f862d1-7d80-4ece-a1d4-12d63bbd9371︡{"md":"Note the difference, $f$ is the function that maps each value to the sequare of what is obtained by adding one to that value. The symbol $\\mapsto$ is read \"maps to\". On the other hand $f(2)$ is the result of evaluation $f$ at $2$.\n\n<hr>\n\nAn important thing to know is that in order to use variables, they should be declared. Try computing $f(t)$\n"}︡
︠d4d9936b-4172-406d-9349-fd77abded0c9︠
f(t);
︠0fa6530e-5115-4b64-81d3-40778f35343ai︠
%md
So define the variable $t$, by entering `var("t")`, then try again to see what is $f(t)$
︡d7e3fde2-6795-4b07-bc45-be976a3b7dcf︡{"md":"So define the variable $t$, by entering `var(\"t\")`, then try again to see what is $f(t)$\n"}︡
︠e71ec0c0-14d7-4db2-9591-2b3c87cb3b93︠
var("t");
f(t);
︠09b938bb-8dfc-4671-9e47-2f16e568754ai︠
%md
<h4>A basic 2d plot of our functions</h4>
︡a7ec8375-29f6-46ee-8107-7a749d137b37︡{"md":"<h4>A basic 2d plot of our functions</h4>\n"}︡
︠9c51b09c-1910-4ada-b193-bdcda4ef3a3a︠
plot(f,[x,-5,5],figsize=5);
︠843ba7d8-f803-4558-be04-17cdcbe7c412i︠
%md
Plots can be made in a variety of colors, this example uses some standard color names. Also note how the + operator acts on figures.
︡8afc9159-b7e7-4b22-b425-ed4b4950e3d9︡{"md":"Plots can be made in a variety of colors, this example uses some standard color names. Also note how the + operator acts on figures.\n"}︡
︠e30db011-ab6d-4392-958f-affc3a1924ea︠
g(x) = 2*x + 2;
where = [x,-5,5];
plot(f,where, color='red') + plot(g, where, color='green');
︠884d9670-4986-4b18-9779-2f3d96510756i︠
%md
#### Solving equations ####
Simply enter the list of equatons, with a **double equality** sign, then the list of variables in terms of which you wnat the solutions.

<hr>

For example, if you want to find the roots of the function $f$, you will write this.
︡5caca982-7c4f-4d04-8854-77a062b4379a︡{"md":"#### Solving equations ####\nSimply enter the list of equatons, with a **double equality** sign, then the list of variables in terms of which you wnat the solutions.\n\n<hr>\n\nFor example, if you want to find the roots of the function $f$, you will write this.\n"}︡
︠75c1242e-90ae-4ddf-b21a-a4da1bbf1d29︠
solve(f(x)==0, x);
︠d715e833-4833-4ef5-94e2-897846f88cbei︠
%md

You can also find where the functions $f$ and $g$ intersect.
︡f82b32cb-7de3-4a36-ac66-951eaaca9567︡{"md":"\nYou can also find where the functions $f$ and $g$ intersect.\n"}︡
︠24e92430-02f1-4f34-a1ca-558b53324927︠
solve(f(x)==g(x), x);
︠62a6cf6a-8288-4c5f-9ece-cc686771a3a2i︠
%md

It is often useful to declare sequences of things. The following will create an ordered list containing the multples of 3, up to the 7th.
︡0d44382d-e16f-47fc-99fc-99d0eee1b3ae︡{"md":"\nIt is often useful to declare sequences of things. The following will create an ordered list containing the multples of 3, up to the 7th.\n"}︡
︠76cb2515-adac-4465-9d8a-041bf2c28977︠
[3*n for n in range(7)];
︠d99c9ca3-4497-4585-a0a7-855302661412i︠
%md

The same can be done with other objects, namely creating a list of, say graphical objects. In the example below we compute and plot the $N=12$ first Taylor approximations of $f(x) : x\mapsto \sin(x)$ between $-2\pi$ and $2\pi$. The green curve is that of $f$, whereas the others are those of the polynomials.
︡dced1206-0e3f-4b0d-b835-4090a7ed6a40︡{"md":"\nThe same can be done with other objects, namely creating a list of, say graphical objects. In the example below we compute and plot the $N=12$ first Taylor approximations of $f(x) : x\\mapsto \\sin(x)$ between $-2\\pi$ and $2\\pi$. The green curve is that of $f$, whereas the others are those of the polynomials.\n"}︡
︠8d3091ad-453b-47c3-aed1-cf2ddfe420f7︠
N = 12;
f(x) = sin(x);
Curvef = plot(f, -2*pi, 2*pi, color='darkgreen', thickness=3, detect_poles=True);
TaylorPolys = sum([plot(taylor(f(x), x, 0, j) ,-2*pi, 2*pi, color=((N-j)/N, 0, j/N), thickness=2) for j in range(N)]);
show(TaylorPolys + Curvef, ymin=-1.2, ymax=1.2, figsize=7);
︠00bc7cc6-4de1-4769-a460-c9cae835d244︠
Do not worry if you have no idea what a Taylor approximations is, or what the code above is all about. This is just a quick demonstration of the power of Sage.
︠8e28de45-b6cb-4fc5-9bb3-0005ba7073a2i︠
%md
<h2>How do I get help?</h2>

<p>There are several methods for getting help while using a Sage worksheet. The most obvious one is to click the Help icon in the top left corner of the page. This takes you to the Sage documentation. Almost everything you want to know can be found there in one way or another. I say <i>almost</i> because Sage is an open-source project maintained by a community of mathematicians across teh world. Some people are better than others at writing documentation. Also, it is a bit intimidating that "Almost everything you ever need to know" is there! Sage is a large project with a lot of power and functionality. It can be difficult to find the thing you need unless you know how to look for it.</p>
<p>Thankfully, the Sage Developers have incorporated other ways to get help. The first option is called "Tab Completion." You can type part of a command and then hit the [Tab] key to get a menu of possible commands that start that way. Let's try it. In the next cell, type</p>
<p><kbd>h = int</kbd></p>
<p>then hit the [Tab] key. After you are done looking, press [Escape] to leave the pop-up menu.</p>
<p> If in addtion you put a question mark at the end, you'll get to the documentation of the choosen command. Often it is quite cryptic at the very beginning, but a quick look will take you to some worked examples.</p>
︡95ee566d-7f07-48ee-875b-bceffe7f035d︡{"md":"<h2>How do I get help?</h2>\n\n<p>There are several methods for getting help while using a Sage worksheet. The most obvious one is to click the Help icon in the top left corner of the page. This takes you to the Sage documentation. Almost everything you want to know can be found there in one way or another. I say <i>almost</i> because Sage is an open-source project maintained by a community of mathematicians across teh world. Some people are better than others at writing documentation. Also, it is a bit intimidating that \"Almost everything you ever need to know\" is there! Sage is a large project with a lot of power and functionality. It can be difficult to find the thing you need unless you know how to look for it.</p>\n<p>Thankfully, the Sage Developers have incorporated other ways to get help. The first option is called \"Tab Completion.\" You can type part of a command and then hit the [Tab] key to get a menu of possible commands that start that way. Let's try it. In the next cell, type</p>\n<p><kbd>h = int</kbd></p>\n<p>then hit the [Tab] key. After you are done looking, press [Escape] to leave the pop-up menu.</p>\n<p> If in addtion you put a question mark at the end, you'll get to the documentation of the choosen command. Often it is quite cryptic at the very beginning, but a quick look will take you to some worked examples.</p>\n"}︡
︠53e5263b-5ea9-428f-a999-a25b3146b9cf︠

︠393ed44d-0429-49f7-a696-145c9b86b6a6i︠
%md

That's it for Sage Beginner’s Workshop Part B.
︡c26df3fc-53e4-4583-b03a-1269c683272f︡{"md":"\nThat's it for Sage Beginner’s Workshop Part B.\n"}︡
︠6b38ebe5-1001-43dd-93bf-97d9e95eef94︠









