<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Success - Shoestore</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <style>
        body {
            margin: 0;
            padding: 0;
            background: url('/client/img/bg-shoes.avif') no-repeat center center fixed;
            background-size: cover;
            height: 100vh;
            position: relative;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: 1;
        }

        .overlay-content {
            position: relative;
            z-index: 2;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100%;
        }

        .success-card {
            background-color: #fff;
            border-radius: 1rem;
            padding: 2rem;
            max-width: 500px;
            width: 90%;
            text-align: center;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
        }

        .success-icon {
            color: #28a745;
            font-size: 4rem;
        }

        .btn-home {
            margin-top: 1.5rem;
            font-size: 1rem;
            padding: 0.75rem 2rem;
        }
    </style>
</head>

<body>
    <div class="overlay"></div>
    <div class="overlay-content">
        <div class="success-card">
            <div class="success-icon mb-3">
                <i class="fas fa-check-circle"></i>
            </div>
            <h2 class="text-success">Đặt hàng thành công!</h2>
            <p class="text-muted mt-3">Cảm ơn bạn đã mua hàng tại <strong>Shoestore</strong>. Chúng tôi sẽ sớm xử lý đơn
                hàng của bạn.</p>
            <a href="/" class="btn btn-primary btn-home">
                <i class="fas fa-home me-2"></i>Quay về trang chủ
            </a>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>