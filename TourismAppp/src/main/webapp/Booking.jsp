<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    String username = (String) session.getAttribute("username");

    if (username == null) {
        response.sendRedirect("Login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Book Tour - Tourism Management</title>

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

.booking-container {
    max-width: 700px;
    margin: 50px auto;
}

/* CARD */

.booking-card {
    border: none;
    border-radius: 18px;
    overflow: hidden;
}

.booking-card .card-body {
    padding: 40px;
}

/* ICON */

.booking-icon {
    width: 85px;
    height: 85px;

    margin: 0 auto 20px;

    border-radius: 50%;

    background: #e7f1ff;

    display: flex;
    align-items: center;
    justify-content: center;

    font-size: 42px;
}

/* TITLE */

.booking-title {
    text-align: center;
    font-weight: bold;
    margin-bottom: 8px;
}

.booking-subtitle {
    text-align: center;
    color: #6c757d;
    margin-bottom: 30px;
}

/* SECTION */

.section-title {
    font-size: 18px;
    font-weight: bold;
    margin-bottom: 15px;
    padding-bottom: 8px;
    border-bottom: 2px solid #e9ecef;
}

/* LABEL */

.form-label {
    font-weight: bold;
}

/* INPUT */

.form-control,
.form-select {
    height: 50px;
    border-radius: 10px;
}

.form-control:focus,
.form-select:focus {
    border-color: #0d6efd;
    box-shadow: 0 0 0 0.2rem rgba(13, 110, 253, 0.15);
}

/* USERNAME */

.username-box {
    background: #f8f9fa;
}

/* BUTTON */

.book-btn {
    height: 52px;
    border-radius: 10px;
    font-size: 17px;
    font-weight: bold;
}

/* MOBILE */

@media (max-width: 576px) {

    .booking-card .card-body {
        padding: 25px;
    }

    .booking-container {
        margin: 30px 15px;
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


<!-- BOOKING FORM -->

<div class="container">

    <div class="booking-container">

        <div class="card shadow booking-card">

            <div class="card-body">


                <!-- ICON -->

                <div class="booking-icon">

                    ✈️

                </div>


                <!-- TITLE -->

                <h2 class="booking-title">

                    BOOK TOUR

                </h2>

                <p class="booking-subtitle">

                    Complete the details below to book your tour.

                </p>


                <form action="BookingServe"
                      method="post">


                    <!-- TOUR DETAILS -->

                    <div class="section-title">

                        🌍 TOUR DETAILS

                    </div>


                    <!-- TOUR ID -->

                    <div class="mb-4">

                        <label class="form-label">

                            TOUR ID

                        </label>

                        <input
                            type="number"
                            name="tourid"
                            class="form-control"
                            placeholder="Enter Tour ID"
                            required>

                    </div>


                    <!-- HOTEL DETAILS -->

                    <div class="section-title">

                        🏨 HOTEL DETAILS

                    </div>


                    <div class="row">


                        <!-- HOTEL 1 -->

                        <div class="col-md-4 mb-3">

                            <label class="form-label">

                                HOTEL 1 ID

                            </label>

                            <input
                                type="number"
                                name="hotelid1"
                                class="form-control"
                                placeholder="Hotel 1"
                                required>

                        </div>


                        <!-- HOTEL 2 -->

                        <div class="col-md-4 mb-3">

                            <label class="form-label">

                                HOTEL 2 ID

                            </label>

                            <input
                                type="number"
                                name="hotelid2"
                                class="form-control"
                                placeholder="Hotel 2"
                                required>

                        </div>


                        <!-- HOTEL 3 -->

                        <div class="col-md-4 mb-3">

                            <label class="form-label">

                                HOTEL 3 ID

                            </label>

                            <input
                                type="number"
                                name="hotelid3"
                                class="form-control"
                                placeholder="Hotel 3"
                                required>

                        </div>

                    </div>


                    <!-- ROOM TYPE -->

                    <div class="mb-3">

                        <label class="form-label">

                            ROOM TYPE

                        </label>

                        <select
                            name="roomtype"
                            class="form-select"
                            required>

                            <option value="">

                                Select Room Type

                            </option>

                            <option value="Single">

                                Single Room

                            </option>

                            <option value="Double">

                                Double Room

                            </option>

                            <option value="Deluxe">

                                Deluxe Room

                            </option>

                        </select>

                    </div>


                    <!-- BOOKING DATE -->

                    <div class="mb-3">

                        <label class="form-label">

                            BOOKING DATE

                        </label>

                        <input
                            type="date"
                            name="bookdt"
                            class="form-control"
                            required>

                    </div>


                    <!-- USERNAME -->

                    <div class="mb-4">

                        <label class="form-label">

                            USERNAME

                        </label>

                        <input
                            type="text"
                            class="form-control username-box"
                            value="<%= username %>"
                            readonly>

                    </div>


                    <!-- BUTTON -->

                    <div class="d-grid">

                        <button
                            type="submit"
                            class="btn btn-primary book-btn">

                            ✈️ BOOK TOUR

                        </button>

                    </div>


                </form>

            </div>

        </div>

    </div>

</div>


</body>

</html>