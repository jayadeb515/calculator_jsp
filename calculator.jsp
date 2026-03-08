<%@ page language="java" %>

<html>
<head>
<title>JSP Calculator</title>

<style>
body{
    font-family: Arial;
    text-align:center;
    margin-top:100px;
}

input,select{
    padding:10px;
    margin:5px;
}

button{
    padding:10px 20px;
}
</style>

</head>

<body>

<h2>Calculator</h2>

<form method="post">

<input type="number" name="num1" placeholder="Enter first number" required><br>

<input type="number" name="num2" placeholder="Enter second number" required><br>

<select name="operation">
<option value="+">Addition (+)</option>
<option value="-">Subtraction (-)</option>
<option value="*">Multiplication (*)</option>
<option value="/">Division (/)</option>
</select>

<br><br>

<button type="submit">Calculate</button>

</form>

<br>

<%
if(request.getParameter("num1") != null){

double num1 = Double.parseDouble(request.getParameter("num1"));
double num2 = Double.parseDouble(request.getParameter("num2"));
String op = request.getParameter("operation");

double result = 0;

if(op.equals("+")){
    result = num1 + num2;
}
else if(op.equals("-")){
    result = num1 - num2;
}
else if(op.equals("*")){
    result = num1 * num2;
}
else if(op.equals("/")){
    
    if(num2 == 0){
        out.println("Error: Division by zero not allowed");
    }
    else{
        result = num1 / num2;
    }
}

if(!(op.equals("/") && num2 == 0)){
out.println("<h3>Result = " + result + "</h3>");
}

}
%>

</body>
</html>