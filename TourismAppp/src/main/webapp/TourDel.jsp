<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Delete Tour - Tourism Management</title>

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

/* DELETE BOX */

.delete-box {
    max-width: 500px;
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
    width: 80px;
    height: 80px;
    margin: 0 auto 20px;
    border-radius: 50%;
    background: #ffe5e5;

    display: flex;
    align-items: center;
    justify-content: center;

    font-size: 38px;
}

/* TITLE */

.delete-title {
    font-weight: bold;
    text-align: center;
    margin-bottom: 10px;
}

.delete-subtitle {
    text-align: center;
    color: #6c757d;
    margin-bottom: 30px;
}

/* INPUT */

.form-control {
    height: 50px;
    border-radius: 10px;
}

.form-control:focus {
    box-shadow: 0 0 0 0.2rem rgba(220, 53, 69, 0.15);
    border-color: #dc3545;
}

/* BUTTON */

.delete-btn {
    height: 50px;
    border-radius: 10px;
    font-weight: bold;
    font-size: 16px;
}

/* BACK BUTTON */

.back-btn {
    border-radius: 8px;
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


<!-- DELETE TOUR -->

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
                    DELETE TOUR
                </h2>

                <p class="delete-subtitle">
                    Enter the Tour ID you want to delete.
                </p>


                <!-- FORM -->

                <form action="DeleteTourServe"
                      method="post">

                    <div class="mb-4">

                        <label class="form-label fw-bold">
                            TOUR ID
                        </label>

                        <input
                            type="number"
                            name="tourid"
                            class="form-control"
                            placeholder="Enter Tour ID"
                            required>

                    </div>


                    <!-- DELETE BUTTON -->

                    <div class="d-grid">

                        <button
                            type="submit"
                            class="btn btn-danger delete-btn">

                            🗑️ DELETE TOUR

                        </button>

                    </div>

                </form>

            </div>

        </div>

    </div>

</div>

</body>
</html>