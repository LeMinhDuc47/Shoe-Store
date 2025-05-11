<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="CNPM - Dự án Shoestore" />
    <meta name="author" content="CNPM" />
    <title>Register - Shoestore</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- FontAwesome -->
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <!-- Custom Styles -->
    <style>
        body {
            background: url('/client/img/bg-shoes.avif') no-repeat center center fixed;
            background-size: cover;
            position: relative;
        }

        .overlay {
            position: absolute;
            inset: 0;
            background: rgba(0, 0, 0, 0.5);
        }

        .card-register {
            backdrop-filter: blur(10px);
            background-color: rgba(255, 255, 255, 0.85);
            border: none;
            border-radius: 1rem;
        }

        .card-register .form-floating>.form-control.is-invalid+label {
            color: #dc3545;
        }

        .card-register .invalid-feedback {
            display: block;
        }
    </style>
</head>

<body>
    <div class="overlay"></div>
    <div class="container vh-100 d-flex align-items-center justify-content-center">
        <div class="col-lg-7">
            <div class="card card-register shadow-lg p-4">
                <div class="text-center mb-4">
                    <i class="fas fa-user-plus fa-3x text-primary"></i>
                    <h2 class="mt-2">Create Account</h2>
                </div>
                <div class="card-body">
                    <form:form method="post" action="/register" modelAttribute="registerUser">
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <div class="form-floating mb-3 mb-md-0">
                                    <form:input id="inputFirstName" type="text" placeholder="Enter your first name"
                                        path="firstName"
                                        class="form-control ${not empty errors.firstName? 'is-invalid':''}" />
                                    <label for="inputFirstName">
                                        <i class="fas fa-signature me-2"></i>First name
                                    </label>
                                    <form:errors path="firstName" cssClass="invalid-feedback" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <form:input id="inputLastName" type="text" placeholder="Enter your last name"
                                        path="lastName" class="form-control" />
                                    <label for="inputLastName">
                                        <i class="fas fa-signature me-2"></i>Last name
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="form-floating mb-3">
                            <form:input id="inputEmail" type="email" placeholder="name@example.com" path="email"
                                class="form-control ${not empty errors.email? 'is-invalid':''}" />
                            <label for="inputEmail">
                                <i class="fas fa-envelope me-2"></i>Email address
                            </label>
                            <form:errors path="email" cssClass="invalid-feedback" />
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-6">
                                <div class="form-floating mb-3 mb-md-0">
                                    <form:input id="inputPassword" type="password" placeholder="Create a password"
                                        path="password"
                                        class="form-control ${not empty errors.password? 'is-invalid':''}" />
                                    <label for="inputPassword">
                                        <i class="fas fa-lock me-2"></i>Password
                                    </label>
                                    <form:errors path="password" cssClass="invalid-feedback" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating mb-3 mb-md-0">
                                    <form:input id="inputConfirmPassword" type="password" placeholder="Confirm password"
                                        path="confirmPassword" class="form-control" />
                                    <label for="inputConfirmPassword">
                                        <i class="fas fa-lock me-2"></i>Confirm Password
                                    </label>
                                </div>
                            </div>
                        </div>

                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

                        <div class="d-grid mb-3">
                            <button type="submit" class="btn btn-primary btn-lg">
                                <i class="fas fa-user-check me-2"></i>Create Account
                            </button>
                        </div>
                    </form:form>
                </div>
                <div class="card-footer text-center py-3">
                    <span class="small">Have an account? <a href="/login">Go to login</a></span>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>