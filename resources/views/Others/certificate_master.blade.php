<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="{{ asset('assets/css/bio.css') }}">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@stack('title') | {{ config('app.name') }}</title>
</head>

<body>
    @yield('content')
</body>

</html>
