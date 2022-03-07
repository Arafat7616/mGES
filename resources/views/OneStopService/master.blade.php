<!DOCTYPE html>
<html>
<head>

    @include('OneStopService.include._header')
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
    @include("OneStopService.include._topbar")
    <!-- Top Bar End -->


    <!-- ========== Left Sidebar Start ========== -->

    @include("OneStopService.include._side-menu")
    <!-- Left Sidebar End -->

    <!-- Start right Content here -->


    <div class="content-page">
        @yield('main-content')
        @include('OneStopService.include._footer')
            @include('Others.toaster_message')
    </div>

</div>


<!-- jQuery  -->
@include("OneStopService.include._scripts")

@include("Others.review_modal")

    <script>

        function Show(title,link,style = '') {

            $('#modal').modal();
            $('#modal-title').html(title);
            $('#modal-body').html('<h1 class="text-center"><strong>Please Wait...</strong></h1>');
            $('#modal-dialog').attr('style',style);
            $.ajax({
                url: link,
                type: 'GET',
                data: {},
            })
            .done(function(response) {
                $('#modal-body').html(response);
            });
        }


        function sweet(message){
            Swal.fire({
                        icon: 'error',
                        title: message,
                         footer: ''
                    });
        }

    </script>

</body>
</html>
