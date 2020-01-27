<html>
<%
int a,b,ans;
String op;
a=Integer.parseInt(request.getParameter("num1"));
b=Integer.parseInt(request.getParameter("num2"));
op=request.getParameter("op");
if(op.equals("+"))
{
	ans=a+b;
	out.println("Sum is:"+ans);
}
else if(op.equals("-"))
{
	ans=a-b;
	out.println("Sub is:"+ans);
}
else if(op.equals("*"))
{
	ans=a*b;
	out.println("Multiplication is:"+ans);
}
else if(op.equals("/"))
{
	ans=a/b;
	out.println("Division is:"+ans);
}
else
{
	out.println("Somthing is Wrong");
}
%>
</html>