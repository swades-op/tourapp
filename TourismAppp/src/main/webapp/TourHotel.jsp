<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Link Tour & Hotel - Tourism Management</title>

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

.link-container {
    max-width: 550px;
    margin: 70px auto;
}

/* CARD */

.link-card {
    border: none;
    border-radius: 18px;
    overflow: hidden;
}

.link-card .card-body {
    padding: 40px;
}

/* ICON */

.link-icon {
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

.link-title {
    text-align: center;
    font-weight: bold;
    margin-bottom: 8px;
}

.link-subtitle {
    text-align: center;
    color: #6c757d;
    margin-bottom: 30px;
}

/* LABEL */

.form-label {
    font-weight: bold;
}

/* INPUT */

.form-control {
    height: 52px;
    border-radius: 10px;
}

.form-control:focus {
    border-color: #0d6efd;
    box-shadow: 0 0 0 0.2rem rgba(13, 110, 253, 0.15);
}

/* INFO */

.info-box {
    background: #e7f1ff;
    border: 1px solid #b6d4fe;
    border-radius: 10px;
    padding: 12px;

    margin-bottom: 25px;

    text-align: center;
    color: #084298;
}

/* BUTTON */

.link-btn {
    height: 52px;
    border-radius: 10px;

    font-size: 17px;
    font-weight: bold;
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


<!-- LINK TOUR HOTEL -->

<div class="container">

    <div class="link-container">

        <div class="card shadow link-card">

            <div class="card-body">


                <!-- ICON -->

                <div class="link-icon">

                    🔗

                </div>


                <!-- TITLE -->

                <h2 class="link-title">

                    LINK TOUR WITH HOTEL

                </h2>

                <p class="link-subtitle">

                    Connect a hotel with an existing tour package.

                </p>


                <!-- INFO -->

                <div class="info-box">

                    ℹ️ Enter the Tour ID and Hotel ID to create the link.

                </div>


                <!-- FORM -->

                <form action="TourHotelServe"
                      method="post">


                    <!-- TOUR ID -->

                    <div class="mb-3">

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


                    <!-- HOTEL ID -->

                    <div class="mb-4">

                        <label class="form-label">

                            HOTEL ID

                        </label>

                        <input
                            type="number"
                            name="hotelid"
                            class="form-control"
                            placeholder="Enter Hotel ID"
                            required>

                    </div>


                    <!-- BUTTON -->

                    <div class="d-grid">

                        <button
                            type="submit"
                            class="btn btn-primary link-btn">

                            🔗 LINK TOUR & HOTEL

                        </button>

                    </div>


                </form>

            </div>

        </div>

    </div>

</div>


</body>

</html>