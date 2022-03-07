<!DOCTYPE html>
<html>
<head>

    @include('TravelAgency.include._header')
</head>


<body class="fixed-left">
    @if(Auth::check())
        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
            @csrf
        </form>
    @endif

<!-- Begin page -->
<div id="wrapper">

    <!-- Top Bar Start -->
    @include("TravelAgency.include._topbar")
    <!-- Top Bar End -->


    <!-- ========== Left Sidebar Start ========== -->

    @include("TravelAgency.include._side-menu")
    <!-- Left Sidebar End -->

    <!-- Start right Content here -->


    <div class="content-page">
        @yield('main-content')
        @include('TravelAgency.include._footer')
            @include('Others.toaster_message')
    </div>

</div>


<!-- jQuery  -->
@include("TravelAgency.include._scripts")

</body>
</html>
