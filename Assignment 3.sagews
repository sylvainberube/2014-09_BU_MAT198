︠f9ef482d-7a19-4e68-b130-7d499303dcbdi︠
%md
<center><h4>Bishop's University<br/>
Mathematics Department<br/>
2014 Fall Semester</h4></center>

<center><h4><strong>MAT 198 – Calculus I (for Life Sciences)</strong><br/>
Sylvain Bérubé</h4></center>

<hr/>

<center><h1>Assignment 3</h1></center>
︡8cb9f6f4-fd32-497b-984f-08486aa7c884︡{"md":"<center><h4>Bishop's University<br/>\nMathematics Department<br/>\n2014 Fall Semester</h4></center>\n\n<center><h4><strong>MAT 198 – Calculus I (for Life Sciences)</strong><br/>\nSylvain Bérubé</h4></center>\n\n<hr/>\n\n<center><h1>Assignment 3</h1></center>\n"}︡
︠56530c85-a323-4ebd-ab9d-6de6b4ddf81ci︠
%md
<h3>Problem 5 d)</h3>
︡03f671e8-4ced-45ff-b9b4-8ca44a68154d︡{"md":"<h3>Problem 5 d)</h3>\n"}︡
︠9ea2ebf9-0bc2-413c-892c-05333b9ca6e8s︠
# This code instructs Sage how to perform a Cobwebbing plot.
def plot_solution(f, initial_condition, number_of_value):
    """
    INPUT:
    f : function
    x_0 : initial value of x
    n : number of iterations to perform

    OUTPUT:
    P : the solution plot for f with n iterations and initial value x_0
    """
    M = [];
    M.append( initial_condition );
    for t in [1..number_of_value]:
        M.append( (f(M[t-1])) );

    points_M = [];
    for t in [0..number_of_value]:
        points_M.append( (t, M[t]) );

    solution = point(points_M, pointsize=40, ymin=0, ymax=3, color="purple");
    X1 = min(0, min(M) - abs(min(M))*0.2);
    X2 = max (0, max(M) + abs(max(M))*0.2);
    Y1 = min(X1,0);
    Y2 = max(X2,0);
    solution.show(xmin = 0, xmax = number_of_value, ymin = Y1, ymax = Y2, figsize = 5);
    return;
        
# This code instructs Sage how to perform a Cobwebbing plot.
def plot_cobweb(f, initial_condition, number_of_value, axis_label_x, axis_label_y):
    """
    INPUT:
    f : function
    initial_condition : initial value of x
    number_of_value : number of iterations to perform

    OUTPUT:
    P : the cobweb plot for f with n iterations and initial value x_0
    """
    x = f.variables()[0];

    ## Create array of values
    L = [initial_condition];
    for i in range(number_of_value):
	    L.append(f.subs(x=L[i]));

    X1 = min(0, min(L) - abs(min(L))*0.2);
    X2 = max (0, max(L) + abs(max(L))*0.2);
    Y1 = min(X1,0);
    Y2 = max(X2,0);

    ## Build the cobweb plot
    P = f.plot(x, X1, X2, color='purple', thickness=2);
    P += plot(x, x, X1, X2, color='blue');

    for i in range(number_of_value):
	## Vertical segments
        if i == 0:
            line1 = line([(L[i], 0), (L[i], L[i+1])], color='black');
        else:
            line1 = line([(L[i], L[i]), (L[i], L[i+1])], color='black');
            line1 = line1 + line([(L[i], 0), (L[i], L[i])], color='grey', linestyle="dashed");
	## Horizontal segments
        line2 = line([(L[i], L[i+1]), (L[i+1], L[i+1])], color='black');
        line2 = line2 + line([(0, L[i+1]), (L[i], L[i+1])], color='grey', linestyle="dashed");
        P = P + line1 + line2;
    
    P = P + text(axis_label_x,(X2, -0.08*(Y2-Y1)));
    P = P + text(axis_label_y,(-0.08*(X2-X1), Y2));

    P.show(xmin = X1, xmax = X2, ymin = Y1, ymax = Y2, figsize = 5);
    return
︡5f991070-d1c3-4782-88a5-88f94f4ec019︡
︠9ce5b233-ae7f-4c7f-a428-26c2d3c108d0︠
︠5be035c5-ea38-4650-8c05-8a305cb3c746︠
# Updating function
r = 0.5;
m = 100;
f(x) = r * x + m;
P0 = 100;
plot_cobweb(f, P0, 5, "P_{t}", "P_{t+1}");
plot_solution(f, P0, 5);
︠aba007a3-39c6-4bb1-8567-6d54e3b70960︠
r = 1.5;
m = 100;
f(x) = r * x + m;
P0 = 100;
plot_cobweb(f, P0, 5, "P_{t}", "P_{t+1}");
plot_solution(f, P0, 5);
︠f9eb41b4-9778-4405-9ff7-88322fbfde15︠
r = 1.5;
m = -100;
f(x) = r * x + m;
P0 = 199;
plot_cobweb(f, P0, 5, "P_{t}", "P_{t+1}");
plot_solution(f, P0, 5);
︠40bb57d6-6016-4954-8fe3-b61bfadb588d︠
r = 1.5;
m = -100;
f(x) = r * x + m;
P0 = 201;
plot_cobweb(f, P0, 5, "P_{t}", "P_{t+1}");
plot_solution(f, P0, 5);
︠f332c0cf-d0b7-40d3-a535-1c8055da31f5︠









