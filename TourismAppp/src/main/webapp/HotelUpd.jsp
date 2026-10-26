<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Update Hotel - Tourism Management</title>

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

.hotel-container {
    max-width: 600px;
    margin: 55px auto;
}

.hotel-card {
    border: none;
    border-radius: 18px;
    overflow: hidden;
}

.hotel-card .card-body {
    padding: 40px;
}

.hotel-icon {
    width: 80px;
    height: 80px;
    margin: 0 auto 20px;
    border-radius: 50%;
    background: #fff3cd;

    display: flex;
    align-items: center;
    justify-content: center;

    font-size: 40px;
}

.hotel-title {
    text-align: center;
    font-weight: bold;
    margin-bottom: 8px;
}

.hotel-subtitle {
    text-align: center;
    color: #6c757d;
    margin-bottom: 30px;
}

.form-label {
    font-weight: bold;
}

.form-control {
    height: 50px;
    border-radius: 10px;
}

.form-control:focus {
    border-color: #ffc107;
    box-shadow: 0 0 0 0.2rem rgba(255, 193, 7, 0.15);
}

.update-btn {
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


<!-- UPDATE HOTEL -->

<div class="container">

    <div class="hotel-container">

        <div class="card shadow hotel-card">

            <div class="card-body">


                <!-- ICON -->

                <div class="hotel-icon">

                    ✏️

                </div>


                <!-- TITLE -->

                <h2 class="hotel-title">

                    UPDATE HOTEL

                </h2>

                <p class="hotel-subtitle">

                    Update the details of an existing hotel.

                </p>


                <!-- FORM -->

                <form action="UpdateHotelServe"
                      method="post">


                    <!-- HOTEL ID -->

                    <div class="mb-3">

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


                    <!-- HOTEL NAME -->

                    <div class="mb-3">

                        <label class="form-label">

                            HOTEL NAME

                        </label>

                        <input
                            type="text"
                            name="hotelname"
                            class="form-control"
                            placeholder="Enter Hotel Name"
                            required>

                    </div>


                    <!-- PLACE -->

                    <div class="mb-4">

                        <label class="form-label">

                            PLACE

                        </label>

                        <input
                            type="text"
                            name="tplace"
                            class="form-control"
                            placeholder="Enter Hotel Location"
                            required>

                    </div>


                    <!-- BUTTON -->

                    <div class="d-grid">

                        <button
                            type="submit"
                            class="btn btn-warning update-btn">

                            ✏️ UPDATE HOTEL

                        </button>

                    </div>


                </form>

            </div>

        </div>

    </div>

</div>


</body>

</html>