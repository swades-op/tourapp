<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    String username =
        (String) session.getAttribute("username");

    if (username == null) {
        response.sendRedirect("Login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Search Tour</title>

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

.search-container {
    width: 600px;
    margin: 70px auto;
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


<!-- SEARCH -->

<div class="container search-container">

    <div class="card shadow">

        <div class="card-body p-4">

            <h2 class="text-center title mb-4">

                SEARCH TOUR

            </h2>


            <form action="SearchTourServe"
                  method="post">

                <div class="mb-3">

                    <label class="form-label">

                        Enter Tour Name

                    </label>

                    <input
                        type="text"
                        name="tournm"
                        class="form-control"
                        placeholder="Example: Darjeeling"
                        required>

                </div>


                <div class="d-grid">

                    <button
                        type="submit"
                        class="btn btn-primary">

                        SEARCH

                    </button>

                </div>

            </form>


            <div class="text-center mt-3">

                <a href="TourReport.jsp">

                    View All Tours

                </a>

            </div>

        </div>

    </div>

</div>

</body>

</html>