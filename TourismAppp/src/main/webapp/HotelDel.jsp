<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Delete Hotel - Tourism Management</title>

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

.delete-box {
    max-width: 550px;
    margin: 80px auto;
}

/* CARD */

.delete-card {
    border: none;
    border-radius: 18px;
    overflow: hidden;
}

.delete-card .card-body {
    padding: 40px;
}

/* ICON */

.delete-icon {
    width: 85px;
    height: 85px;

    margin: 0 auto 20px;

    border-radius: 50%;

    background: #f8d7da;

    display: flex;
    align-items: center;
    justify-content: center;

    font-size: 42px;
}

/* TITLE */

.delete-title {
    text-align: center;
    font-weight: bold;
    margin-bottom: 8px;
}

.delete-subtitle {
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
    border-color: #dc3545;
    box-shadow: 0 0 0 0.2rem rgba(220, 53, 69, 0.15);
}

/* WARNING */

.warning-box {
    background: #fff3cd;
    border: 1px solid #ffe69c;
    border-radius: 10px;
    padding: 12px;
    margin-bottom: 25px;

    text-align: center;

    color: #664d03;
}

/* BUTTON */

.delete-btn {
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


<!-- DELETE HOTEL -->

<div class="container">

    <div class="delete-box">

        <div class="card shadow delete-card">

            <div class="card-body">


                <!-- ICON -->

                <div class="delete-icon">

                    🗑️

                </div>


                <!-- TITLE -->

                <h2 class="delete-title">

                    DELETE HOTEL

                </h2>

                <p class="delete-subtitle">

                    Remove an existing hotel from the system.

                </p>


                <!-- WARNING -->

                <div class="warning-box">

                    ⚠️ Please make sure you enter the correct Hotel ID.

                </div>


                <!-- FORM -->

                <form action="HotelDelServe"
                      method="post">


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
                            class="btn btn-danger delete-btn">

                            🗑️ DELETE HOTEL

                        </button>

                    </div>


                </form>

            </div>

        </div>

    </div>

</div>


</body>

</html>