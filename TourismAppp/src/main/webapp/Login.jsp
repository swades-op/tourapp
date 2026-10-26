<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Login - Tourism Management</title>

<meta name="viewport"
      content="width=device-width, initial-scale=1">

<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet">

<style>

body {
    margin: 0;
    min-height: 100vh;
    font-family: Arial, sans-serif;
    background: linear-gradient(135deg, #0d6efd, #6610f2);
    display: flex;
    align-items: center;
    justify-content: center;
}

/* LOGIN CARD */

.login-card {
    width: 100%;
    max-width: 430px;
    border: none;
    border-radius: 20px;
    overflow: hidden;
    box-shadow: 0 15px 40px rgba(0,0,0,0.25);
}

/* HEADER */

.login-header {
    background: #212529;
    color: white;
    text-align: center;
    padding: 30px 20px;
}

.login-header .logo {
    font-size: 50px;
}

.login-header h2 {
    margin-top: 10px;
    font-weight: bold;
}

/* BODY */

.login-body {
    padding: 35px;
    background: white;
}

.form-label {
    font-weight: bold;
}

.form-control {
    height: 50px;
    border-radius: 10px;
}

.login-btn {
    height: 50px;
    border-radius: 10px;
    font-weight: bold;
    font-size: 16px;
}

/* REGISTER */

.register-text {
    text-align: center;
    margin-top: 20px;
}

.register-text a {
    text-decoration: none;
    font-weight: bold;
}

</style>

</head>

<body>


<div class="login-card">


    <!-- HEADER -->

    <div class="login-header">

        <div class="logo">
            🌍
        </div>

        <h2>
            TOURISM MANAGEMENT
        </h2>

        <p class="mb-0">
            Welcome back!
        </p>

    </div>


    <!-- LOGIN FORM -->

    <div class="login-body">

        <h4 class="text-center mb-4">
            LOGIN
        </h4>


        <form action="LoginServe" method="post">


            <!-- USERNAME -->

            <div class="mb-3">

                <label class="form-label">
                    Username
                </label>

                <input
                    type="text"
                    name="username"
                    class="form-control"
                    placeholder="Enter your username"
                    required>

            </div>


            <!-- PASSWORD -->

            <div class="mb-4">

                <label class="form-label">
                    Password
                </label>

                <input
                    type="password"
                    name="password"
                    class="form-control"
                    placeholder="Enter your password"
                    required>

            </div>


            <!-- LOGIN BUTTON -->

            <div class="d-grid">

                <button
                    type="submit"
                    class="btn btn-primary login-btn">

                    🔐 LOGIN

                </button>

            </div>

        </form>


        <!-- REGISTER -->

        <div class="register-text">

            <span>
                Don't have an account?
            </span>

            <a href="Register.jsp">
                Register Now
            </a>

        </div>

    </div>

</div>


<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>

</html>