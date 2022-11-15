<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="styles/style.css">
    <title>Document</title>
</head>

<body class="text-center">
    <main class="form-signin w-100 m-auto">
        <form action="config/login.php" method="POST">
            <h1>Unid Cancun</h1>
            <h2 class="h3 mb-3 fw-normal">Please sing in</h2>
            <div class="form-floating my-3">
                <input type="email" class="form-control" id="floatingPassword" placeholder="name@example.com"
                    name="email">
                <label for="floatingPassword">Email address</label>
            </div>
            <button class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>
            <div class="my-2">
                <a href="config/recovery.php">¿recuperar contraseña</a>
                <p class="mt-5 mb-3 text-muted">&copy; 2017-2022</p>
            </div>
        </form>
    </main>

</body>

</html>