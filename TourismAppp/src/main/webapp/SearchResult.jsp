<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Result</title>
</head>

<body>

<h1>SEARCH RESULT</h1>

<%
    Object[] tour =
        (Object[]) request.getAttribute("tour");

    if (tour == null) {
%>

        <h3>No tour found.</h3>

<%
    } else {
%>

        <h3>Tour ID: <%= tour[0] %></h3>
        <h3>Tour Name: <%= tour[1] %></h3>
        <h3>Place 1: <%= tour[2] %></h3>
        <h3>Place 2: <%= tour[3] %></h3>
        <h3>Place 3: <%= tour[4] %></h3>
        <h3>Start Date: <%= tour[5] %></h3>
        <h3>Price: <%= tour[6] %></h3>

<%
    }
%>

<br>

<a href="TourSearch.jsp">Search Again</a>

</body>
</html>