<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Tour Hotel Report</title>

<meta name="viewport"
      content="width=device-width, initial-scale=1">

<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet">

<style>

body {
    background-color: #f5f7fa;
}

.report-container {
    margin-top: 40px;
}

</style>

</head>

<body>

<nav class="navbar navbar-dark bg-dark">

    <div class="container">

        <a class="navbar-brand"
           href="AdminMenu.jsp">

            TOURISM MANAGEMENT

        </a>

        <a href="AdminMenu.jsp"
           class="btn btn-outline-light">

            BACK

        </a>

    </div>

</nav>


<div class="container report-container">

    <h2 class="text-center mb-4">

        TOUR - HOTEL REPORT

    </h2>


    <%

        List<Object[]> links =
            (List<Object[]>) request.getAttribute("links");

        if (links != null && !links.isEmpty()) {

    %>


    <div class="table-responsive">

        <table class="table table-bordered table-striped">

            <thead class="table-dark">

                <tr>

                    <th>TOUR ID</th>
                    <th>TOUR NAME</th>
                    <th>HOTEL ID</th>
                    <th>HOTEL NAME</th>
                    <th>PLACE</th>

                </tr>

            </thead>


            <tbody>

            <%

                for (Object[] link : links) {

            %>

                <tr>

                    <td><%= link[0] %></td>

                    <td><%= link[1] %></td>

                    <td><%= link[2] %></td>

                    <td><%= link[3] %></td>

                    <td><%= link[4] %></td>

                </tr>

            <%

                }

            %>

            </tbody>

        </table>

    </div>


    <%

        } else {

    %>

        <div class="alert alert-warning text-center">

            No tour-hotel links available.

        </div>

    <%

        }

    %>

</div>

</body>

</html>