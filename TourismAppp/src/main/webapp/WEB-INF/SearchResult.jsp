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

    Object[] tour =
        (Object[]) request.getAttribute("tour");
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Search Result</title>

<meta name="viewport"
      content="width=device-width, initial-scale=1">

<link
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body>

<nav class="navbar navbar-dark bg-dark">

    <div class="container">

        <a class="navbar-brand"
           href="ClientMenu.jsp">

            TOURISM MANAGEMENT

        </a>

        <a href="TourSearch.jsp"
           class="btn btn-outline-light">

            SEARCH AGAIN

        </a>

    </div>

</nav>


<div class="container mt-5">

    <h2 class="text-center mb-4">

        SEARCH RESULT

    </h2>


<%
    if (tour == null) {
%>

    <div class="alert alert-danger text-center">

        No tour found.

    </div>

<%
    } else {
%>

    <div class="card shadow">

        <div class="card-body">

            <div class="table-responsive">

                <table class="table table-bordered
                              table-hover text-center">

                    <thead class="table-dark">

                        <tr>

                            <th>Tour ID</th>
                            <th>Tour Name</th>
                            <th>Place 1</th>
                            <th>Place 2</th>
                            <th>Place 3</th>
                            <th>Start Date</th>
                            <th>Price</th>

                        </tr>

                    </thead>

                    <tbody>

                        <tr>

                            <td>
                                <%= tour[0] %>
                            </td>

                            <td>
                                <%= tour[1] %>
                            </td>

                            <td>
                                <%= tour[2] %>
                            </td>

                            <td>
                                <%= tour[3] %>
                            </td>

                            <td>
                                <%= tour[4] %>
                            </td>

                            <td>
                                <%= tour[5] %>
                            </td>

                            <td>
                                ₹ <%= tour[6] %>
                            </td>

                        </tr>

                    </tbody>

                </table>

            </div>

        </div>

    </div>

<%
    }
%>

</div>

</body>

</html>