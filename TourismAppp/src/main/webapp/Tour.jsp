<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Add Tour - Tourism Management</title>

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
    font-weight: bold;
    letter-spacing: 1px;
}


/* HEADER */

.page-header {
    background: linear-gradient(135deg, #0d6efd, #6610f2);
    color: white;
    text-align: center;
    padding: 45px 20px;
}

.page-header .icon {
    font-size: 50px;
}

.page-header h1 {
    font-weight: bold;
    margin-top: 10px;
}

.page-header p {
    margin-bottom: 0;
    color: #e9ecef;
}


/* FORM */

.tour-container {
    max-width: 750px;
    margin: 45px auto;
}

.tour-card {
    border: none;
    border-radius: 18px;
    overflow: hidden;
    box-shadow: 0 8px 30px rgba(0,0,0,0.10);
}

.tour-card-body {
    padding: 40px;
}

.form-label {
    font-weight: bold;
}

.form-control,
.form-select {
    min-height: 48px;
    border-radius: 10px;
}

.form-control:focus,
.form-select:focus {
    border-color: #0d6efd;
    box-shadow: 0 0 0 0.2rem rgba(13,110,253,.15);
}


/* SECTION TITLE */

.form-section {
    font-weight: bold;
    font-size: 18px;
    margin-bottom: 20px;
}


/* BUTTON */

.submit-btn {
    min-height: 50px;
    border-radius: 10px;
    font-weight: bold;
    font-size: 16px;
}


/* FOOTER */

footer {
    background: #212529;
    color: white;
    text-align: center;
    padding: 20px;
}


/* MOBILE */

@media (max-width: 576px) {

    .tour-card-body {
        padding: 25px;
    }

    .page-header h1 {
        font-size: 30px;
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

        <a href="AdminMenu.jsp"
           class="btn btn-outline-light">

            ← BACK

        </a>

    </div>

</nav>


<!-- PAGE HEADER -->

<section class="page-header">

    <div class="container">

        <div class="icon">
            🗺️
        </div>

        <h1>
            ADD NEW TOUR
        </h1>

        <p>
            Create a new tourism package for your customers
        </p>

    </div>

</section>


<!-- FORM -->

<div class="container tour-container">

    <div class="card tour-card">

        <div class="tour-card-body">


            <div class="form-section">

                📋 Tour Information

            </div>


            <form action="TourServe"
                  method="post">


                <!-- TOUR ID -->

                <div class="mb-4">

                    <label class="form-label">
                        Tour ID
                    </label>

                    <input
                        type="number"
                        name="tourid"
                        class="form-control"
                        placeholder="Enter tour ID"
                        required>

                </div>


                <!-- TOUR NAME -->

                <div class="mb-4">

                    <label class="form-label">
                        Tour Name
                    </label>

                    <input
                        type="text"
                        name="tournm"
                        class="form-control"
                        placeholder="Enter tour name"
                        required>

                </div>


                <div class="row">


                    <!-- PLACE 1 -->

                    <div class="col-md-4 mb-4">

                        <label class="form-label">
                            Place 1
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

                    <div class="col-md-4 mb-4">

                        <label class="form-label">
                            Place 2
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

                    <div class="col-md-4 mb-4">

                        <label class="form-label">
                            Place 3
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

                </div>


                <div class="row">


                    <!-- START DATE -->

                    <div class="col-md-6 mb-4">

                        <label class="form-label">
                            Start Date
                        </label>

                        <input
                            type="date"
                            name="startdt"
                            class="form-control"
                            required>

                    </div>


                    <!-- PRICE -->

                    <div class="col-md-6 mb-4">

                        <label class="form-label">
                            Tour Price
                        </label>

                        <input
                            type="number"
                            name="price"
                            class="form-control"
                            placeholder="Enter price"
                            step="0.01"
                            min="0"
                            required>

                    </div>

                </div>


                <!-- BUTTON -->

                <div class="d-grid mt-2">

                    <button
                        type="submit"
                        class="btn btn-primary submit-btn">

                        ➕ ADD TOUR

                    </button>

                </div>


            </form>

        </div>

    </div>

</div>


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