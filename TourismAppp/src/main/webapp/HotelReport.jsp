<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Hotel Report - Tourism Management</title>

<meta name="viewport"
      content="width=device-width, initial-scale=1">

<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet">

<style>

body {
    background: #f5f7fa;
    font-family: Arial, sans-serif;
}

/* NAVBAR */

.navbar {
    padding: 15px 0;
}

.navbar-brand {
    font-weight: bold;
    letter-spacing: 1px;
}

.back-btn {
    border-radius: 8px;
}

/* CONTAINER */

.hotel-container {
    max-width: 1100px;
    margin: 50px auto;
}

/* HEADER */

.report-header {
    text-align: center;
    margin-bottom: 30px;
}

.hotel-icon {
    width: 80px;
    height: 80px;

    margin: 0 auto 15px;

    border-radius: 50%;

    background: #e7f1ff;

    display: flex;
    align-items: center;
    justify-content: center;

    font-size: 40px;
}

.report-title {
    font-weight: bold;
    margin-bottom: 5px;
}

.report-subtitle {
    color: #6c757d;
}

/* CARD */

.report-card {
    border: none;
    border-radius: 18px;
    overflow: hidden;
}

.report-card .card-body {
    padding: 30px;
}

/* TABLE */

.table {
    margin-bottom: 0;
    vertical-align: middle;
}

.table thead th {
    padding: 15px;
    text-transform: uppercase;
}

.table tbody td {
    padding: 14px;
}

.table tbody tr {
    transition: 0.2s;
}

.table tbody tr:hover {
    background: #f1f5ff;
}

/* HOTEL NAME */

.hotel-name {
    font-weight: bold;
}

/* EMPTY MESSAGE */

.empty-box {
    padding: 40px;
    text-align: center;
}

.empty-icon {
    font-size: 45px;
    margin-bottom: 15px;
}

</style>

</head>


<body>


<!-- NAVBAR -->

<nav class="navbar navbar-dark bg-dark">

    <div class="container">

        <a class="navbar-brand"
           href="AdminMenu.jsp">

            🌍 TOURISM MANAGEMENT

        </a>

        <a href="AdminMenu.jsp"
           class="btn btn-outline-light back-btn">

            ← BACK

        </a>

    </div>

</nav>


<!-- HOTEL REPORT -->

<div class="container hotel-container">


    <!-- HEADER -->

    <div class="report-header">

        <div class="hotel-icon">

            🏨

        </div>

        <h2 class="report-title">

            HOTEL REPORT

        </h2>

        <p class="report-subtitle">

            View all hotels available in the tourism system.

        </p>

    </div>


    <!-- REPORT CARD -->

    <div class="card shadow report-card">

        <div class="card-body">


        <%

            List<Object[]> hotels =
                (List<Object[]>) request.getAttribute("hotels");

            if (hotels != null && !hotels.isEmpty()) {

        %>


            <!-- TABLE -->

            <div class="table-responsive">

                <table class="table table-bordered table-hover text-center">

                    <thead class="table-dark">

                        <tr>

                            <th>HOTEL ID</th>

                            <th>HOTEL NAME</th>

                            <th>PLACE</th>

                        </tr>

                    </thead>


                    <tbody>

                    <%

                        for (Object[] hotel : hotels) {

                    %>

                        <tr>

                            <td>

                                <%= hotel[0] %>

                            </td>

                            <td class="hotel-name">

                                🏨 <%= hotel[1] %>

                            </td>

                            <td>

                                📍 <%= hotel[2] %>

                            </td>

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


            <!-- EMPTY STATE -->

            <div class="empty-box">

                <div class="empty-icon">

                    🏨

                </div>

                <h4>

                    No Hotels Available

                </h4>

                <p class="text-muted">

                    There are currently no hotels in the system.

                </p>

                <a href="Hotel.jsp"
                   class="btn btn-primary">

                    + ADD HOTEL

                </a>

            </div>


        <%

            }

        %>


        </div>

    </div>


</div>


</body>

</html>