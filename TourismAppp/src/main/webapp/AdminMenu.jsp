<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Admin Dashboard - Tourism Management</title>

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


/* HERO */

.admin-hero {
    background: linear-gradient(135deg, #212529, #343a40);
    color: white;
    text-align: center;
    padding: 55px 20px;
}

.admin-hero h1 {
    font-size: 42px;
    font-weight: bold;
}

.admin-hero p {
    color: #ced4da;
    font-size: 18px;
}


/* MENU */

.menu-section {
    padding: 50px 0;
}

.menu-card {
    border: none;
    border-radius: 18px;
    height: 100%;
    transition: 0.3s;

    box-shadow:
        0 5px 20px rgba(0,0,0,0.08);
}

.menu-card:hover {
    transform: translateY(-7px);

    box-shadow:
        0 12px 30px rgba(0,0,0,0.15);
}

.menu-card .card-body {
    padding: 30px 20px;
    text-align: center;
}

.menu-icon {
    font-size: 45px;
    margin-bottom: 15px;
}

.menu-card h4 {
    font-weight: bold;
}

.menu-card p {
    color: #6c757d;
    min-height: 45px;
}


/* BUTTON */

.menu-btn {
    border-radius: 10px;
    padding: 10px 20px;
    font-weight: bold;
}


/* FOOTER */

footer {
    background: #212529;
    color: white;
    text-align: center;
    padding: 20px;
    margin-top: 20px;
}


/* MOBILE */

@media (max-width: 576px) {

    .admin-hero h1 {
        font-size: 32px;
    }

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

        <a href="LogoutServe"
           class="btn btn-danger">

            LOGOUT

        </a>

    </div>

</nav>


<!-- HERO -->

<section class="admin-hero">

    <div class="container">

        <div class="menu-icon">
            ⚙️
        </div>

        <h1>
            ADMIN DASHBOARD
        </h1>

        <p>
            Manage tours, hotels and customer bookings
        </p>

    </div>

</section>


<!-- ADMIN MENU -->

<section class="menu-section">

    <div class="container">

        <h2 class="text-center fw-bold mb-5">

            Management Panel

        </h2>


        <div class="row g-4">


            <!-- ADD TOUR -->

            <div class="col-lg-3 col-md-4 col-sm-6">

                <div class="card menu-card">

                    <div class="card-body">

                        <div class="menu-icon">
                            🗺️
                        </div>

                        <h4>
                            Add Tour
                        </h4>

                        <p>
                            Create a new tourism package.
                        </p>

                        <a href="Tour.jsp"
                           class="btn btn-primary menu-btn">

                            ADD TOUR

                        </a>

                    </div>

                </div>

            </div>


            <!-- DELETE TOUR -->

            <div class="col-lg-3 col-md-4 col-sm-6">

                <div class="card menu-card">

                    <div class="card-body">

                        <div class="menu-icon">
                            🗑️
                        </div>

                        <h4>
                            Delete Tour
                        </h4>

                        <p>
                            Remove an existing tour.
                        </p>

                        <a href="TourDel.jsp"
                           class="btn btn-danger menu-btn">

                            DELETE TOUR

                        </a>

                    </div>

                </div>

            </div>


            <!-- UPDATE TOUR -->

            <div class="col-lg-3 col-md-4 col-sm-6">

                <div class="card menu-card">

                    <div class="card-body">

                        <div class="menu-icon">
                            ✏️
                        </div>

                        <h4>
                            Update Tour
                        </h4>

                        <p>
                            Modify tour information.
                        </p>

                        <a href="TourUpd.jsp"
                           class="btn btn-warning menu-btn">

                            UPDATE TOUR

                        </a>

                    </div>

                </div>

            </div>


            <!-- TOUR REPORT -->

            <div class="col-lg-3 col-md-4 col-sm-6">

                <div class="card menu-card">

                    <div class="card-body">

                        <div class="menu-icon">
                            📊
                        </div>

                        <h4>
                            Tour Report
                        </h4>

                        <p>
                            View all available tours.
                        </p>

                        <a href="TourReportServe"
                           class="btn btn-success menu-btn">

                            TOUR REPORT

                        </a>

                    </div>

                </div>

            </div>


            <!-- ADD HOTEL -->

            <div class="col-lg-3 col-md-4 col-sm-6">

                <div class="card menu-card">

                    <div class="card-body">

                        <div class="menu-icon">
                            🏨
                        </div>

                        <h4>
                            Add Hotel
                        </h4>

                        <p>
                            Add a hotel to the system.
                        </p>

                        <a href="Hotel.jsp"
                           class="btn btn-primary menu-btn">

                            ADD HOTEL

                        </a>

                    </div>

                </div>

            </div>


            <!-- DELETE HOTEL -->

            <div class="col-lg-3 col-md-4 col-sm-6">

                <div class="card menu-card">

                    <div class="card-body">

                        <div class="menu-icon">
                            🗑️
                        </div>

                        <h4>
                            Delete Hotel
                        </h4>

                        <p>
                            Remove an existing hotel.
                        </p>

                        <a href="HotelDel.jsp"
                           class="btn btn-danger menu-btn">

                            DELETE HOTEL

                        </a>

                    </div>

                </div>

            </div>


            <!-- UPDATE HOTEL -->

            <div class="col-lg-3 col-md-4 col-sm-6">

                <div class="card menu-card">

                    <div class="card-body">

                        <div class="menu-icon">
                            ✏️
                        </div>

                        <h4>
                            Update Hotel
                        </h4>

                        <p>
                            Modify hotel information.
                        </p>

                        <a href="HotelUpd.jsp"
                           class="btn btn-warning menu-btn">

                            UPDATE HOTEL

                        </a>

                    </div>

                </div>

            </div>


            <!-- HOTEL REPORT -->

            <div class="col-lg-3 col-md-4 col-sm-6">

                <div class="card menu-card">

                    <div class="card-body">

                        <div class="menu-icon">
                            📊
                        </div>

                        <h4>
                            Hotel Report
                        </h4>

                        <p>
                            View all registered hotels.
                        </p>

                        <a href="HotelReportServe"
                           class="btn btn-success menu-btn">

                            HOTEL REPORT

                        </a>

                    </div>

                </div>

            </div>


            <!-- LINK TOUR HOTEL -->

            <div class="col-lg-3 col-md-4 col-sm-6">

                <div class="card menu-card">

                    <div class="card-body">

                        <div class="menu-icon">
                            🔗
                        </div>

                        <h4>
                            Link Tour & Hotel
                        </h4>

                        <p>
                            Connect hotels with tours.
                        </p>

                        <a href="TourHotel.jsp"
                           class="btn btn-info menu-btn">

                            LINK TOUR HOTEL

                        </a>

                    </div>

                </div>

            </div>


            <!-- TOUR HOTEL REPORT -->

            <div class="col-lg-3 col-md-4 col-sm-6">

                <div class="card menu-card">

                    <div class="card-body">

                        <div class="menu-icon">
                            📋
                        </div>

                        <h4>
                            Tour-Hotel Report
                        </h4>

                        <p>
                            View tour and hotel links.
                        </p>

                        <a href="TourHotelReportServe"
                           class="btn btn-info menu-btn">

                            TOUR-HOTEL REPORT

                        </a>

                    </div>

                </div>

            </div>


            <!-- BOOKING REPORT -->

            <div class="col-lg-3 col-md-4 col-sm-6">

                <div class="card menu-card">

                    <div class="card-body">

                        <div class="menu-icon">
                            📑
                        </div>

                        <h4>
                            Booking Report
                        </h4>

                        <p>
                            View customer bookings.
                        </p>

                        <a href="AdminBookingReportServe"
                           class="btn btn-success menu-btn">

                            BOOKING REPORT

                        </a>

                    </div>

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