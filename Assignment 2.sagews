︠f9ef482d-7a19-4e68-b130-7d499303dcbdi︠
%md
<center><h4>Bishop's University<br/>
Mathematics Department<br/>
2014 Fall Semester</h4></center>

<center><h4><strong>MAT 198 – Calculus I (for Life Sciences)</strong><br/>
Sylvain Bérubé</h4></center>

<hr/>

<center><h1>Assignment 2</h1></center>
︡beb48c10-e576-4829-b3f8-975c2f972278︡{"md":"<center><h4>Bishop's University<br/>\nMathematics Department<br/>\n2014 Fall Semester</h4></center>\n\n<center><h4><strong>MAT 198 – Calculus I (for Life Sciences)</strong><br/>\nSylvain Bérubé</h4></center>\n\n<hr/>\n\n<center><h1>Assignment 2</h1></center>\n"}︡
︠56530c85-a323-4ebd-ab9d-6de6b4ddf81ci︠
%md
<h3>Problem 5</h3>
︡667c5f94-39d4-4ff4-86ed-70ef9b35e9c9︡{"md":"<h3>Problem 5</h3>\n"}︡
︠5be035c5-ea38-4650-8c05-8a305cb3c746︠
# Updating function of the Beberton-Holt model's of salmon population's growth
f(x) = (3 * x) / (1 + (x/1000));
show( f(x) );
︠bb23dcc8-2d33-421b-aa7f-6a5183aa12d7︠
# Solution for the first 40 years with initial population of 500
initial_condition = 500;
S = [];
number_of_value = 40;
S.append( initial_condition );
for t in [1..number_of_value]:
    S.append( f(S[t-1]) );
for t in [0..number_of_value]:
    print "S_%d = %f" % (t, S[t]);
︠f9eb41b4-9778-4405-9ff7-88322fbfde15︠









