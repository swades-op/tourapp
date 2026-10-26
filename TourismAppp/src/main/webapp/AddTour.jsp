<%@ page language="java" contentType="text/html; charset=UTF-8"
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
    background-color: #f5f7fa;
    font-family: Arial, sans-serif;
}

.form-container {
    width: 650px;
    margin: 50px auto;
}

.card {
    border-radius: 15px;
}

.title {
    font-weight: bold;
}

</style>

</head>

<body>

<!-- NAVBAR -->

<nav class="navbar navbar-dark bg-dark">

    <div class="container">

        <a class="navbar-brand"
           href="ClientMenu.jsp">

            TOURISM MANAGEMENT

        </a>

        <a href="ClientMenu.jsp"
           class="btn btn-outline-light">

            BACK

        </a>

    </div>

</nav>


<!-- ADD TOUR FORM -->

<div class="container form-container">

    <div class="card shadow">

        <div class="card-body p-4">

            <h2 class="text-center title mb-4">

                ADD TOUR

            </h2>


            <form action="AddTourServe" method="post">


                <!-- TOUR ID -->

                <div class="mb-3">

                    <label class="form-label">
                        Tour ID
                    </label>

                    <input
                        type="number"
                        name="tourid"
                        class="form-control"
                        required>

                </div>


                <!-- TOUR NAME -->

                <div class="mb-3">

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


                <!-- PLACE 1 -->

                <div class="mb-3">

                    <label class="form-label">
                        Place 1
                    </label>

                    <input
                        type="text"
                        name="tplace1"
                        class="form-control"
                        placeholder="Enter first destination"
                        required>

                </div>


                <!-- PLACE 2 -->

                <div class="mb-3">

                    <label class="form-label">
                        Place 2
                    </label>

                    <input
                        type="text"
                        name="tplace2"
                        class="form-control"
                        placeholder="Enter second destination">

                </div>


                <!-- PLACE 3 -->

                <div class="mb-3">

                    <label class="form-label">
                        Place 3
                    </label>

                    <input
                        type="text"
                        name="tplace3"
                        class="form-control"
                        placeholder="Enter third destination">

                </div>


                <!-- START DATE -->

                <div class="mb-3">

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

                <div class="mb-3">

                    <label class="form-label">
                        Price
                    </label>

                    <input
                        type="number"
                        name="price"
                        class="form-control"
                        step="0.01"
                        required>

                </div>


                <!-- BUTTON -->

                <div class="d-grid">

                    <button
                        type="submit"
                        class="btn btn-success">

                        ADD TOUR

                    </button>

                </div>

            </form>

        </div>

    </div>

</div>

</body>

</html>