<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Booking Report</title>

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

        ALL BOOKING REPORT

    </h2>


    <%

        List<Object[]> bookings =
            (List<Object[]>) request.getAttribute("bookings");

        if (bookings != null && !bookings.isEmpty()) {

    %>

    <div class="table-responsive">

        <table class="table table-bordered table-striped">

            <thead class="table-dark">

                <tr>

                    <th>BOOKING ID</th>
                    <th>TOUR ID</th>
                    <th>HOTEL 1</th>
                    <th>HOTEL 2</th>
                    <th>HOTEL 3</th>
                    <th>ROOM TYPE</th>
                    <th>BOOKING DATE</th>
                    <th>USERNAME</th>

                </tr>

            </thead>

            <tbody>

            <%

                for (Object[] booking : bookings) {

            %>

                <tr>

                    <td><%= booking[0] %></td>
                    <td><%= booking[1] %></td>
                    <td><%= booking[2] %></td>
                    <td><%= booking[3] %></td>
                    <td><%= booking[4] %></td>
                    <td><%= booking[5] %></td>
                    <td><%= booking[6] %></td>
                    <td><%= booking[7] %></td>

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

            No bookings available.

        </div>

    <%

        }

    %>

</div>

</body>

</html>