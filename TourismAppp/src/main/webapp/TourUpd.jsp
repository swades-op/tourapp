<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Update Tour - Tourism Management</title>

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

/* FORM CONTAINER */

.tour-box {
    max-width: 700px;
    margin: 50px auto;
}

/* CARD */

.tour-card {
    border: none;
    border-radius: 18px;
    overflow: hidden;
}

.tour-card .card-body {
    padding: 40px;
}

/* ICON */

.tour-icon {
    width: 80px;
    height: 80px;

    margin: 0 auto 20px;

    border-radius: 50%;

    background: #fff3cd;

    display: flex;
    align-items: center;
    justify-content: center;

    font-size: 38px;
}

/* TITLE */

.tour-title {
    text-align: center;
    font-weight: bold;
    margin-bottom: 8px;
}

.tour-subtitle {
    text-align: center;
    color: #6c757d;
    margin-bottom: 30px;
}

/* FORM */

.form-label {
    font-weight: bold;
}

.form-control,
.form-select {
    height: 50px;
    border-radius: 10px;
}

.form-control:focus,
.form-select:focus {
    border-color: #ffc107;
    box-shadow: 0 0 0 0.2rem rgba(255, 193, 7, 0.15);
}

/* UPDATE BUTTON */

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


<!-- UPDATE TOUR FORM -->

<div class="container">

    <div class="tour-box">

        <div class="card shadow tour-card">

            <div class="card-body">


                <!-- ICON -->

                <div class="tour-icon">

                    ✏️

                </div>


                <!-- TITLE -->

                <h2 class="tour-title">

                    UPDATE TOUR

                </h2>

                <p class="tour-subtitle">

                    Update the details of an existing tour.

                </p>


                <!-- FORM -->

                <form action="UpdateTourServe"
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


                    <!-- TOUR NAME -->

                    <div class="mb-3">

                        <label class="form-label">

                            TOUR NAME

                        </label>

                        <input
                            type="text"
                            name="tournm"
                            class="form-control"
                            placeholder="Enter Tour Name"
                            required>

                    </div>


                    <!-- PLACE 1 -->

                    <div class="mb-3">

                        <label class="form-label">

                            PLACE 1

                        </label>

                        <select
                            name="tplace1"
                            class="form-select"
                            required>

                            <option value="">
                                Select Place
                            </option>

                            <option value="Asansol">
                                Asansol
                            </option>

                            <option value="Kolkata">
                                Kolkata
                            </option>

                            <option value="Darjeeling">
                                Darjeeling
                            </option>

                            <option value="Sikkim">
                                Sikkim
                            </option>

                            <option value="Goa">
                                Goa
                            </option>

                        </select>

                    </div>


                    <!-- PLACE 2 -->

                    <div class="mb-3">

                        <label class="form-label">

                            PLACE 2

                        </label>

                        <select
                            name="tplace2"
                            class="form-select"
                            required>

                            <option value="">
                                Select Place
                            </option>

                            <option value="Asansol">
                                Asansol
                            </option>

                            <option value="Kolkata">
                                Kolkata
                            </option>

                            <option value="Darjeeling">
                                Darjeeling
                            </option>

                            <option value="Sikkim">
                                Sikkim
                            </option>

                            <option value="Goa">
                                Goa
                            </option>

                        </select>

                    </div>


                    <!-- PLACE 3 -->

                    <div class="mb-3">

                        <label class="form-label">

                            PLACE 3

                        </label>

                        <select
                            name="tplace3"
                            class="form-select"
                            required>

                            <option value="">
                                Select Place
                            </option>

                            <option value="Asansol">
                                Asansol
                            </option>

                            <option value="Kolkata">
                                Kolkata
                            </option>

                            <option value="Darjeeling">
                                Darjeeling
                            </option>

                            <option value="Sikkim">
                                Sikkim
                            </option>

                            <option value="Goa">
                                Goa
                            </option>

                        </select>

                    </div>


                    <!-- START DATE -->

                    <div class="mb-3">

                        <label class="form-label">

                            START DATE

                        </label>

                        <input
                            type="date"
                            name="startdt"
                            class="form-control"
                            required>

                    </div>


                    <!-- PRICE -->

                    <div class="mb-4">

                        <label class="form-label">

                            PRICE

                        </label>

                        <input
                            type="number"
                            name="price"
                            class="form-control"
                            placeholder="Enter Tour Price"
                            step="0.01"
                            required>

                    </div>


                    <!-- BUTTON -->

                    <div class="d-grid">

                        <button
                            type="submit"
                            class="btn btn-warning update-btn">

                            ✏️ UPDATE TOUR

                        </button>

                    </div>


                </form>

            </div>

        </div>

    </div>

</div>


</body>

</html>