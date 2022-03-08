@extends('Others.certificate_master')
@push('title')
    Medical Certificate
@endpush
@section('content')
    <div class="cv-bg">
        <div class="container-pdf ">
            <img src="{{ asset('assets/images/Madical-Certicicet.png') }}" class="bio-img" alt="">
        </div>
        <div class="user-name">{{ $candidate->candidate_name }}</div>
        <div class="user-text">He already have taken <span class="Bold-text">vaccination, booster</span> and he is
            health fitness rating is 85%. He is free from <span class="Bold-text">HIV</span>. </div>
        <div class="user-date">9th Apr 2022</div>
        <div class="user-sign">ShoIduLlH</div>
    </div>
@endsection
