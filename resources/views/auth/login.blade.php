<!DOCTYPE html>
<html>

<head>
    <title>Koperasi | Login</title>

    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="../../assets/css/login.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap" rel="stylesheet">
    
    <script src="https://kit.fontawesome.com/a81368914c.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

</head>

<body>
    <div class="container">
        <div class="img">
            <img src="../../images/koperasi-Lumintu.png">
            <div class="text-container">
                <h2>Selamat Datang</h2>
                <h1>Koperasi Karyawan <br>Lumintu</h1>
            </div>
        </div>
        <div class="login-content">
            <form method="POST" action="{{ route('login') }}" class="form-horizontal">
                @csrf
                <h2 class="title">Login</h2>
                <br><br>
                <div class="input-div one">
                    <div class="i">
                        <i class="fas fa-user"></i>
                    </div>
                    <div class="div">
                        <h5>Email atau No Anggota</h5>
                        <input id="gmail" type="text" class="form-control @error('email') is-invalid @enderror"
                            name="email" value="{{ old('email') }}" autocomplete="email" autofocus>
                        @error('email')
                        <span id="peringatan" class="invalid-feedback" role="alert" style="color:red">
                            <strong><br><br><br><br>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>
                </div>
                <br>
                <div class="input-div pass" style="margin-top:45px">
                    <div class="i">
                        <i class="fas fa-lock"></i>
                    </div>
                    <div class="div">
                        <h5>Password</h5>
                        <input id="sandi" type="password"
                            class="form-control @error('password') is-invalid @enderror" name="password"
                            autocomplete="current-password">
                        @error('password')
                        <span id="peringatan" class="invalid-feedback" role="alert" style="color:red">
                            <strong><br><br><br><br>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>
                </div>
                <br><br>
                <button class="btn" type="submit">Login</button>
            </form>
        </div>
    </div>
    <script type="text/javascript" src="../../javascript/main.js"></script>
</body>

</html>
