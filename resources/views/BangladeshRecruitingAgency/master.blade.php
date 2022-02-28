<!DOCTYPE html>
<html>

<head>

    @include('BangladeshRecruitingAgency.include._header')
</head>


<body class="fixed-left">
    @if (Auth::check())
        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
            @csrf
        </form>
    @endif

    <!-- Begin page -->
    <div id="wrapper">

        <!-- Top Bar Start -->
        @include("BangladeshRecruitingAgency.include._topbar")
        <!-- Top Bar End -->


        <!-- ========== Left Sidebar Start ========== -->

        @include("BangladeshRecruitingAgency.include._side-menu")
        <!-- Left Sidebar End -->

        <!-- Start right Content here -->


        <div class="content-page">
            @yield('main-content')
            @include('BangladeshRecruitingAgency.include._footer')
        </div>

    </div>


    <!-- jQuery  -->
    @include("BangladeshRecruitingAgency.include._scripts")

    <script>
        $(document).ready(function() {
            getnotification()
            setInterval(() => {

                getnotification()
            }, 300000);

        })

        function getnotification() {
            $.ajax({
                type: 'GET',
                url: '/bangladesh-recruiting-agency/get-all-notification',
                success: function(data) {
                    $('#notification_body').html(data)
                    // console.log(data);
                }
            });
        }
    </script>

</body>

</html>
