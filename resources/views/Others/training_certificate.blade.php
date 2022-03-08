@extends('Others.certificate_master')
@push('title')
    Training Testing Certificate
@endpush
@section('content')
    <div class="cv-bg">
        <div class="container-pdf ">
            <img src="{{ asset('assets/images/Training-Teasting-Certificate.png') }}" class="bio-img" alt="">
        </div>
        <div class="user-name">Imdadul Haque</div>
        <div class="user-text">He has successfully completed <b>CAR CLEANING SKILL</b> step and he have gained 75%
            marks. </div>
        <div class="user-date">9th Apr 2022</div>
        <div class="user-sign">Monirulraha</div>
    </div>
@endsection
