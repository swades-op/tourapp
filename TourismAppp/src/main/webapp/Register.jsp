<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Register - Tourism Management</title>

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

    background: linear-gradient(
        135deg,
        #0d6efd,
        #6610f2
    );

    display: flex;
    align-items: center;
    justify-content: center;

    padding: 30px 15px;
}


/* REGISTER CARD */

.register-container {
    width: 100%;
    max-width: 500px;
}

.register-card {
    border: none;
    border-radius: 20px;
    overflow: hidden;

    box-shadow:
        0 15px 40px rgba(0,0,0,0.25);
}


/* HEADER */

.register-header {
    background: #212529;
    color: white;

    text-align: center;

    padding: 25px 20px;
}

.logo {
    font-size: 48px;
}

.register-header h2 {
    font-weight: bold;
    margin-top: 10px;
}

.register-header p {
    margin-bottom: 0;
    color: #ced4da;
}


/* FORM */

.register-body {
    background: white;
    padding: 35px;
}

.form-label {
    font-weight: bold;
}

.form-control {
    height: 48px;
    border-radius: 10px;
    border: 1px solid #ced4da;
}

.form-control:focus {
    border-color: #0d6efd;

    box-shadow:
        0 0 0 0.2rem rgba(13,110,253,.15);
}


/* BUTTON */

.register-btn {
    height: 50px;
    border-radius: 10px;

    font-weight: bold;
    font-size: 16px;
}


/* LOGIN */

.login-text {
    text-align: center;
    margin-top: 20px;
}

.login-text a {
    text-decoration: none;
    font-weight: bold;
}


/* MOBILE */

@media (max-width: 576px) {

    .register-body {
        padding: 25px;
    }

    .register-header h2 {
        font-size: 22px;
    }

}

</style>

</head>


<body>


<div class="register-container">

    <div class="card register-card">


        <!-- HEADER -->

        <div class="register-header">

            <div class="logo">
                🌍
            </div>

            <h2>
                TOURISM MANAGEMENT
            </h2>

            <p>
                Create your account and start exploring
            </p>

        </div>


        <!-- FORM -->

        <div class="register-body">

            <h4 class="text-center fw-bold mb-4">

                CREATE ACCOUNT

            </h4>


            <form action="RegisterServe"
                  method="post">


                <!-- USERNAME -->

                <div class="mb-3">

                    <label class="form-label">
                        Username
                    </label>

                    <input
                        type="text"
                        name="username"
                        class="form-control"
                        placeholder="Enter username"
                        required>

                </div>


                <!-- PASSWORD -->

                <div class="mb-3">

                    <label class="form-label">
                        Password
                    </label>

                    <input
                        type="password"
                        name="password"
                        class="form-control"
                        placeholder="Enter password"
                        required>

                </div>


                <!-- NAME -->

                <div class="mb-3">

                    <label class="form-label">
                        Full Name
                    </label>

                    <input
                        type="text"
                        name="name"
                        class="form-control"
                        placeholder="Enter your full name"
                        required>

                </div>


                <!-- EMAIL -->

                <div class="mb-3">

                    <label class="form-label">
                        Email Address
                    </label>

                    <input
                        type="email"
                        name="email"
                        class="form-control"
                        placeholder="Enter your email"
                        required>

                </div>


                <!-- PHONE -->

                <div class="mb-4">

                    <label class="form-label">
                        Phone Number
                    </label>

                    <input
                        type="text"
                        name="phno"
                        class="form-control"
                        placeholder="Enter your phone number"
                        required>

                </div>


                <!-- REGISTER -->

                <div class="d-grid">

                    <button
                        type="submit"
                        class="btn btn-primary register-btn">

                        📝 CREATE ACCOUNT

                    </button>

                </div>


            </form>


            <!-- LOGIN -->

            <div class="login-text">

                Already have an account?

                <a href="Login.jsp">
                    Login
                </a>

            </div>


        </div>

    </div>

</div>


<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>


</body>

</html>