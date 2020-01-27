<html>
<h1>Salary</h1>
<body>
<% 

int id;
double ta,hra,da,net;
String name,des;
int a;
id=Integer.parseInt(request.getParameter("eid"));
name=request.getParameter("ename");
des=request.getParameter("edes");
a=Integer.parseInt(request.getParameter("esalary"));

ta=a*0.10;
hra=a*20;
da=a*0.15;
net=a+ta+hra+da+1000;

out.println("Employee id:"+id+"<br>");
out.println("Employee name:"+name+"<br>");
out.println("Employee Designation:"+des+"<br>");
out.println("Employee Net Salary:"+net+"<br>");


 
%>
</body>

</html>