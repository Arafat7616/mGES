<!DOCTYPE html>
<html>
<head>

    @include('CallCenter.include._header')
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
    @include("CallCenter.include._topbar")
    <!-- Top Bar End -->


    <!-- ========== Left Sidebar Start ========== -->

    @include("CallCenter.include._side-menu")
    <!-- Left Sidebar End -->

    <!-- Start right Content here -->


    <div class="content-page">
        @yield('main-content')
        @include('CallCenter.include._footer')
            @include('Others.toaster_message')
    </div>

</div>


<!-- jQuery  -->
@include("CallCenter.include._scripts")

</body>
</html>
