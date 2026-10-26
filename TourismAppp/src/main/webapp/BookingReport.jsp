<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>

<%
    String username =
        (String) session.getAttribute("username");

    if (username == null) {
        response.sendRedirect("Login.jsp");
        return;
    }

    List<Object[]> bookings =
        (List<Object[]>) request.getAttribute("bookings");
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>My Bookings - Tourism Management</title>

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

.report-container {
    max-width: 1200px;
    margin: 45px auto;
}

/* HEADER */

.report-header {
    text-align: center;
    margin-bottom: 30px;
}

.booking-icon {
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
    white-space: nowrap;
}

.table tbody td {
    padding: 14px;
    white-space: nowrap;
}

.table tbody tr {
    transition: 0.2s;
}

.table tbody tr:hover {
    background: #f1f5ff;
}

/* BOOKING ID */

.booking-id {
    font-weight: bold;
}

/* ROOM */

.room-badge {
    display: inline-block;
    padding: 6px 12px;
    border-radius: 20px;
    background: #e7f1ff;
    color: #0d6efd;
    font-weight: bold;
}

/* EMPTY */

.empty-box {
    padding: 45px;
    text-align: center;
}

.empty-icon {
    font-size: 50px;
    margin-bottom: 15px;
}

/* MOBILE */

@media (max-width: 576px) {

    .report-container {
        margin: 30px 15px;
    }

    .report-card .card-body {
        padding: 15px;
    }

}

</style>

</head>


<body>


<!-- NAVBAR -->

<nav class="navbar navbar-dark bg-dark">

    <div class="container">

        <a class="navbar-brand"
           href="ClientMenu.jsp">

            🌍 TOURISM MANAGEMENT

        </a>

        <a href="ClientMenu.jsp"
           class="btn btn-outline-light back-btn">

            ← BACK

        </a>

    </div>

</nav>


<!-- REPORT -->

<div class="container report-container">


    <!-- HEADER -->

    <div class="report-header">

        <div class="booking-icon">

            📋

        </div>

        <h2 class="report-title">

            MY BOOKINGS

        </h2>

        <p class="report-subtitle">

            View your previous and current tour bookings.

        </p>

    </div>


    <!-- CARD -->

    <div class="card shadow report-card">

        <div class="card-body">


        <%

            if (bookings != null && !bookings.isEmpty()) {

        %>


            <div class="table-responsive">

                <table class="table table-bordered table-hover text-center">

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

                            <td class="booking-id">

                                #<%= booking[0] %>

                            </td>

                            <td>

                                <%= booking[1] %>

                            </td>

                            <td>

                                🏨 <%= booking[2] %>

                            </td>

                            <td>

                                🏨 <%= booking[3] %>

                            </td>

                            <td>

                                🏨 <%= booking[4] %>

                            </td>

                            <td>

                                <span class="room-badge">

                                    <%= booking[5] %>

                                </span>

                            </td>

                            <td>

                                📅 <%= booking[6] %>

                            </td>

                            <td>

                                👤 <%= booking[7] %>

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

                    📋

                </div>

                <h4>

                    No Bookings Found

                </h4>

                <p class="text-muted">

                    You haven't made any tour bookings yet.

                </p>

                <a href="Booking.jsp"
                   class="btn btn-primary">

                    ✈️ BOOK A TOUR

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