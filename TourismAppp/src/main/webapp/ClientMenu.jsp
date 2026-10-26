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

<title>Client Menu - Tourism Management</title>

<meta name="viewport"
      content="width=device-width, initial-scale=1">

<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet">

<style>

body {
    margin: 0;
    font-family: Arial, sans-serif;
    background: #f5f7fa;
}

/* NAVBAR */

.navbar {
    padding: 15px 0;
}

.navbar-brand {
    font-size: 22px;
    font-weight: bold;
    letter-spacing: 1px;
}

.welcome-user {
    color: white;
    margin-right: 15px;
}

/* HERO */

.hero {
    background: linear-gradient(135deg, #0d6efd, #6610f2);
    color: white;
    padding: 70px 20px;
    text-align: center;
}

.hero h1 {
    font-size: 45px;
    font-weight: bold;
}

.hero p {
    font-size: 19px;
    margin-top: 15px;
}

/* SEARCH */

.search-box {
    max-width: 600px;
    margin: 30px auto 0;
}

.search-box input {
    height: 50px;
}

.search-box button {
    height: 50px;
}

/* MENU */

.menu-section {
    padding: 50px 0;
}

.menu-card {
    border: none;
    border-radius: 18px;
    transition: 0.3s;
    height: 100%;
}

.menu-card:hover {
    transform: translateY(-8px);
}

.menu-icon {
    font-size: 50px;
    margin-bottom: 15px;
}

.menu-card h3 {
    font-weight: bold;
}

.menu-card p {
    color: #6c757d;
    min-height: 50px;
}

.menu-card .btn {
    border-radius: 10px;
    padding: 10px 25px;
    font-weight: bold;
}

/* DESTINATIONS */

.destination-section {
    padding: 30px 0 70px;
}

.destination-card {
    border: none;
    border-radius: 15px;
    padding: 30px 15px;
    text-align: center;
    background: white;
    box-shadow: 0 5px 20px rgba(0,0,0,0.08);
}

.destination-card h4 {
    font-weight: bold;
}

/* FOOTER */

footer {
    background: #212529;
    color: white;
    text-align: center;
    padding: 20px;
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

        <div class="d-flex align-items-center">

            <span class="welcome-user">

                Welcome, <%= username %>

            </span>

            <a href="LogoutServe"
               class="btn btn-danger">

                LOGOUT

            </a>

        </div>

    </div>

</nav>


<!-- HERO SECTION -->

<section class="hero">

    <div class="container">

        <h1>
            Explore The World 🌎
        </h1>

        <p>
            Discover amazing destinations and plan
            your perfect journey.
        </p>


        <!-- SEARCH -->

        <div class="search-box">

            <form action="SearchTourServe"
                  method="post"
                  class="input-group">

                <input
                    type="text"
                    name="tournm"
                    class="form-control"
                    placeholder="Search tour by name..."
                    required>

                <button
                    type="submit"
                    class="btn btn-warning">

                    🔍 SEARCH

                </button>

            </form>

        </div>

    </div>

</section>


<!-- MENU SECTION -->

<section class="menu-section">

    <div class="container">

        <h2 class="text-center fw-bold mb-5">

            What Would You Like To Do?

        </h2>


        <div class="row g-4">


            <!-- SEARCH TOUR -->

            <div class="col-md-4">

                <div class="card menu-card shadow">

                    <div class="card-body text-center p-4">

                        <div class="menu-icon">

                            🔎

                        </div>

                        <h3>
                            Search Tour
                        </h3>

                        <p>
                            Find your favourite tour
                            and explore destinations.
                        </p>

                        <a href="TourSearch.jsp"
                           class="btn btn-primary">

                            SEARCH TOUR

                        </a>

                    </div>

                </div>

            </div>


            <!-- BOOK TOUR -->

            <div class="col-md-4">

                <div class="card menu-card shadow">

                    <div class="card-body text-center p-4">

                        <div class="menu-icon">

                            ✈️

                        </div>

                        <h3>
                            Book Tour
                        </h3>

                        <p>
                            Choose a tour and make
                            your booking easily.
                        </p>

                        <a href="Booking.jsp"
                           class="btn btn-success">

                            BOOK TOUR

                        </a>

                    </div>

                </div>

            </div>


            <!-- MY BOOKINGS -->

            <div class="col-md-4">

                <div class="card menu-card shadow">

                    <div class="card-body text-center p-4">

                        <div class="menu-icon">

                            📋

                        </div>

                        <h3>
                            My Bookings
                        </h3>

                        <p>
                            View your current and
                            previous bookings.
                        </p>

                        <a href="BookingReportServe"
                           class="btn btn-warning">

                            MY BOOKINGS

                        </a>

                    </div>

                </div>

            </div>


            <!-- VIEW TOURS -->

            <div class="col-md-4">

                <div class="card menu-card shadow">

                    <div class="card-body text-center p-4">

                        <div class="menu-icon">

                            🗺️

                        </div>

                        <h3>
                            View Tours
                        </h3>

                        <p>
                            Browse all available
                            tourism packages.
                        </p>

                        <a href="TourReportServe"
                           class="btn btn-info">

                            VIEW TOURS

                        </a>

                    </div>

                </div>

            </div>


        </div>

    </div>

</section>


<!-- POPULAR DESTINATIONS -->

<section class="destination-section">

    <div class="container">

        <h2 class="text-center fw-bold mb-4">

            Popular Destinations

        </h2>


        <div class="row g-4">


            <div class="col-md-4">

                <div class="destination-card">

                    <div class="menu-icon">
                        🏔️
                    </div>

                    <h4>
                        Darjeeling
                    </h4>

                    <p>
                        Experience the beautiful
                        Himalayan mountains.
                    </p>

                </div>

            </div>


            <div class="col-md-4">

                <div class="destination-card">

                    <div class="menu-icon">
                        🏞️
                    </div>

                    <h4>
                        Sikkim
                    </h4>

                    <p>
                        Explore nature and
                        peaceful mountain views.
                    </p>

                </div>

            </div>


            <div class="col-md-4">

                <div class="destination-card">

                    <div class="menu-icon">
                        🏖️
                    </div>

                    <h4>
                        Goa
                    </h4>

                    <p>
                        Enjoy beaches, sunsets
                        and unforgettable trips.
                    </p>

                </div>

            </div>


        </div>

    </div>

</section>


<!-- FOOTER -->

<footer>

    <p class="mb-0">

        © 2026 Tourism Management System

    </p>

</footer>


<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>


</body>

</html>