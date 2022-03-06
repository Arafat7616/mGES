<!DOCTYPE html>
<html>
<head>

    @include('MalaysianEmployer.include._header')
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
    @include("MalaysianEmployer.include._topbar")
    <!-- Top Bar End -->


    <!-- ========== Left Sidebar Start ========== -->

    {{-- @include("MalaysianEmployer.include._side-menu") --}}
    <!-- Left Sidebar End -->

    <!-- Start right Content here -->


    <div class="content-page">
        @yield('main-content')
        @include('MalaysianEmployer.include._footer')
            @include('Others.toaster_message')
    </div>

</div>


<!-- jQuery  -->
@include("MalaysianEmployer.include._scripts")

</body>
</html>
