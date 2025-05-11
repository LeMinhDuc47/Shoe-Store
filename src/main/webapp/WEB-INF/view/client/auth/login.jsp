<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="CNPM - Dự án Shoestore" />
    <meta name="author" content="CNPM" />
    <title>Login - Shoetore</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles -->
    <style>
        body {
            background: url('/client/img/bg-shoes.avif') no-repeat center center fixed;
            background-size: cover;
        }

        .overlay {
            position: absolute;
            inset: 0;
            background: rgba(0, 0, 0, 0.5);
        }

        .card-login {
            backdrop-filter: blur(10px);
            background-color: rgba(255, 255, 255, 0.8);
            border: none;
            border-radius: 1rem;
        }

        .social-btn img {
            filter: grayscale(50%);
            transition: filter .3s;
        }

        .social-btn img:hover {
            filter: none;
        }
    </style>
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>

<body>
    <div class="overlay"></div>
    <div class="container d-flex vh-100">
        <div class="row justify-content-center align-self-center w-100">
            <div class="col-lg-5">
                <div class="card card-login shadow-lg p-4">
                    <div class="text-center mb-4">
                        <i class="fas fa-shoe-prints fa-3x text-primary"></i>
                        <h2 class="mt-2">Shoetore</h2>
                    </div>
                    <div class="card-body">
                        <form method="post" action="/login">
                            <c:if test="${param.error != null}">
                                <div class="alert alert-danger">Invalid email or password.</div>
                            </c:if>
                            <c:if test="${param.logout != null}">
                                <div class="alert alert-success">Logout success.</div>
                            </c:if>

                            <div class="form-floating mb-3">
                                <input type="email" class="form-control" id="floatingEmail"
                                    placeholder="name@example.com" name="username" required>
                                <label for="floatingEmail"><i class="fas fa-envelope me-2"></i>Email address</label>
                            </div>

                            <div class="form-floating mb-3">
                                <input type="password" class="form-control" id="floatingPassword" placeholder="Password"
                                    name="password" required>
                                <label for="floatingPassword"><i class="fas fa-lock me-2"></i>Password</label>
                            </div>

                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="rememberMe">
                                    <label class="form-check-label" for="rememberMe">
                                        Remember me
                                    </label>
                                </div>
                                <a href="/forgot-password" class="small">Forgot password?</a>
                            </div>

                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

                            <div class="d-grid mb-3">
                                <button type="submit" class="btn btn-primary btn-lg">
                                    <i class="fas fa-sign-in-alt me-2"></i>Login
                                </button>
                            </div>

                            <div class="text-center mb-2">
                                <span class="text-muted">Or sign in with</span>
                            </div>
                            <div class="d-flex justify-content-center gap-3 mb-3">
                                <a href="/oauth2/authorization/google" class="social-btn" title="Google">
                                    <img src="/client/img/provider/default-google.png" width="40" height="40"
                                        alt="Google">
                                </a>
                                <a href="/oauth2/authorization/github" class="social-btn" title="Github">
                                    <img src="/client/img/provider/default-github.png" width="40" height="40"
                                        alt="Github">
                                </a>
                            </div>

                            <div class="text-center">
                                <span>Don't have an account? <a href="/register">Sign up</a></span>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>