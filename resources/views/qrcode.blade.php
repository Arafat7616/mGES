<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Laravel Generate QR Code Examples</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>

    @php
        $link = url('/qr_code_result');
    @endphp

    <div class="container mt-4">
        <div class="card">
            <div class="card-header">
                <h2>Simple QR Code </h2>
            </div>
            <div class="card-body">
                {!! QrCode::size(300)->generate($link) !!}
            </div>
        </div>
        <div class="card">
            <div class="card-header">
                <h2>Color QR Code</h2>
            </div>
            <div class="card-body">
                {!! QrCode::size(300)->color(51, 153, 255)->generate('https://www.facebook.com/') !!}
            </div>
        </div>
    </div>
</body>
</html>
