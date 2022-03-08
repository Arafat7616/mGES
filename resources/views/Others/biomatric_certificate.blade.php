@extends('Others.certificate_master')
@push('title')
    Biometric Certificate
@endpush
@section('content')
    <div class="cv-bg">
        <div class="container-pdf ">
            <img src="{{ asset('assets/images/Biometric-Certificate.png') }}" class="bio-img" alt="">
        </div>
        <div class="user-name">Apurbo Kumar</div>
        <div class="user-text">He has successfully matched with our system and he is verified with police verification.
        </div>
        <div class="user-date">9th Apr 2022</div>
        <div class="user-sign">ZaforIqBa</div>
    </div>
@endsection
