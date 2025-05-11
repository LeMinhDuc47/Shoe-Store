<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Error Page</title>
    <style>
        /* Reset cơ bản */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html,
        body {
            height: 100%;
            font-family: sans-serif;
        }

        /* Container full screen */
        .error-page {
            position: relative;
            width: 100%;
            height: 100%;
            background: url('/client/img/errorpage-desktop.avif') center center / cover no-repeat;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #fff;
        }

        /* Lớp overlay bán trong suốt */
        .error-page::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.6);
            z-index: 1;
        }

        /* Nội dung nằm trên overlay */
        .error-content {
            position: relative;
            z-index: 2;
            text-align: center;
            max-width: 600px;
            padding: 0 20px;
        }

        .error-content h1 {
            font-size: 3rem;
            margin-bottom: 0.5em;
        }

        .error-content p {
            font-size: 1.2rem;
            margin-bottom: 1.5em;
            line-height: 1.4;
        }

        .error-content .btn {
            display: inline-block;
            padding: 0.75em 1.5em;
            font-size: 1rem;
            color: #fff;
            border: 2px solid #fff;
            text-decoration: none;
            transition: background 0.3s, color 0.3s;
        }

        .error-content .btn:hover {
            background: #fff;
            color: #000;
        }
    </style>
</head>

<body>

    <div class="error-page">
        <div class="error-content">
            <h1>We've lost the ball.</h1>
            <p>Looks like your ball has gone over the fence. Let's go get it back.</p>
            <a href="/" class="btn">LET'S GO BACK HOME</a>
        </div>
    </div>

</body>

</html>