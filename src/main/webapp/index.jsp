<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome to My JSP Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #4CAF50;
            color: white;
            text-align: center;
            padding: 1em 0;
        }
        main {
            padding: 20px;
            margin: 20px auto;
            max-width: 800px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        footer {
            text-align: center;
            padding: 10px;
            background-color: #333;
            color: white;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>

<header>
    <h1>Welcome to My JSP Page</h1>
</header>

<main>
    <h2>Hello, User!</h2>
    <p>This is a simple JSP page demonstrating how dynamic content can be embedded within HTML.</p>

    <%-- JSP Scriptlet to Display Current Date and Time --%>
    <p>The current date and time is: 
        <strong>
            <%= new java.util.Date() %>
        </strong>
    </p>
    
    <%-- JSP Expression to Display User Agent --%>
    <p>Your browser is: 
        <strong>
            <%= request.getHeader("User-Agent") %>
        </strong>
    </p>

    <%-- Conditional Statement in JSP --%>
    <%
        int hour = java.util.Calendar.getInstance().get(java.util.Calendar.HOUR_OF_DAY);
        if (hour < 12) {
    %>
        <p>Good Morning!</p>
    <%
        } else if (hour < 18) {
    %>
        <p>Good Afternoon!</p>
    <%
        } else {
    %>
        <p>Good Evening!</p>
    <%
        }
    %>
</main>

<footer>
    <p>&copy; 2024 My JSP WebApp</p>
</footer>

</body>
</html>
