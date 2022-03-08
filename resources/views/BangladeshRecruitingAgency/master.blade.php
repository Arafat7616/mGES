<!DOCTYPE html>
<html>

<head>

    @include('BangladeshRecruitingAgency.include._header')

    {{-- CSS for Fractional Star --}}
    <style>
        span.stars, span.stars span {
        display: block;
        background: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/747/star-o-white.svg) 0 0 repeat-x;
        width: 200px; /* width of a star multiplied by 5 */
        height: 40px; /* the height of the star */
        background-size: 40px 40px;
        }

        span.stars span {
        background-position: 0 0;
        background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/747/star.svg);
        }

        .star-center{
            display: flex;
            justify-content: center;
        }
    </style>
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
            @include('Others.toaster_message')
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

    {{-- JS for Fractional Star --}}
    <script>
        var starWidth = 40;

        $.fn.stars = function() {
        return $(this).each(function() {
            $(this).html($('<span />').width(Math.max(0, (Math.min(5, parseFloat($(this).html())))) * starWidth));
        });
        }
        $(document).ready(function() {
        $('span.stars').stars();
        });
    </script>

</body>

</html>
