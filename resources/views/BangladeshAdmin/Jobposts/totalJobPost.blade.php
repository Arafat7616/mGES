@extends("BangladeshAdmin.master")

@section('title', 'Company Request')
@section('DataTableCss')
    <!-- DataTables -->
    <link href="{{ asset('assets/plugins/datatables/jquery.dataTables.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/plugins/datatables/buttons.bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/plugins/datatables/fixedHeader.bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/plugins/datatables/responsive.bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/plugins/datatables/dataTables.bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/plugins/datatables/scroller.bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/css/approval_vacancy.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/css/flipCounter.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/css/customModalTotalJob.css') }}" rel="stylesheet" type="text/css" />

@endsection

@section('main-content')

    <!-- Start content -->
    <div class="content">
        <div class="container">
            <!-- Page-Title -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="page-header-title">
                        <h4 class="pull-left page-title">All Job Posts</h4>
                        <ol class="breadcrumb pull-right">
                            <li><a href="#">mGES</a></li>
                            <li><a href="#">Job Posts</a></li>
                            <li class="active">All Posted Job</li>
                        </ol>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">All Job Posts</h3>
                        </div>
                        <div class="panel-body">
                            <table id="datatable-buttons" class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th>SL No</th>
                                        <th>Company Name</th>
                                        <th>Job Category</th>
                                        <th>Post Date</th>
                                        <th>Job Vacancy</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($jobPosts as $jobPost)
                                        <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td>{{ $jobPost->user->company_name }}</td>
                                            <td>{{ $jobPost->job_category->category_name }}</td>
                                            <td>{{ $jobPost->created_at }}</td>
                                            <td>{{ $jobPost->job_vacancy }}</td>
                                            <td>
                                                <a class="btn btn-info"
                                                    href="{{ route('BangladeshAdmin.JobPostShow', $jobPost->id) }}">
                                                    <i class="fa fa-eye"></i>
                                                </a>

                                                <a class="btn btn-info"
                                                    href="{{ url('job-post/demand-latter/'.$jobPost->id) }}">
                                                    <i class="fa fa-file"></i>
                                                </a>



                                                <button class="btn btn-info button" value="{{ $jobPost->job_vacancy }}"
                                                    href="javascript:void(0);">
                                                    <i class="fa fa-edit"></i> Data Synchronize
                                                </button>

                                                @if ($jobPost->notification)
                                                    <a class="btn btn-warning" disabled href="#">
                                                        <i class="fa fa-bell"></i> Sent Notification
                                                    </a>
                                                @else
                                                    <a class="btn btn-warning"
                                                        href="{{ route('BangladeshAdmin.jobPost.notificationStore', $jobPost->id) }}">
                                                        <i class="fa fa-bell"></i> Sent Notification
                                                    </a>
                                                @endif

                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>SL No</th>
                                        <th>Company Name</th>
                                        <th>Job Category</th>
                                        <th>Post Date</th>
                                        <th>Job Vacancy</th>
                                        <th>Action</th>
                                    </tr>
                                </tfoot>
                            </table>
                            <div class='text-center'>

                                {{-- <button id="button" type="button" class="btn btn-info">Data Synchronize</button> --}}

                                <div id="overlay">
                                    <div class="cv-spinner">
                                        <span class="spinner">
                                            <div class="demo">
                                                <div class="demo__colored-blocks">
                                                    <div class="demo__colored-blocks-rotater">
                                                        <div class="demo__colored-block"></div>
                                                        <div class="demo__colored-block"></div>
                                                        <div class="demo__colored-block"></div>
                                                    </div>
                                                    <div class="demo__colored-blocks-inner"></div>
                                                    <div class="demo__text">Initiating Auto Match</div>
                                                </div>
                                                <div class="demo__inner">
                                                    <svg class="demo__numbers" viewBox="0 0 100 100">
                                                        <defs>
                                                            <path class="demo__num-path-1" d="M40,28 55,22 55,78" />
                                                            <path class="demo__num-join-1-2"
                                                                d="M55,78 55,83 a17,17 0 1,0 34,0 a20,10 0 0,0 -20,-10" />
                                                            <path class="demo__num-path-2"
                                                                d="M69,73 l-35,0 l30,-30 a16,16 0 0,0 -22.6,-22.6 l-7,7" />
                                                            <path class="demo__num-join-2-3" d="M28,69 Q25,44 34.4,27.4" />
                                                            <path class="demo__num-path-3"
                                                                d="M30,20 60,20 40,50 a18,15 0 1,1 -12,19" />
                                                        </defs>
                                                        <path class="demo__numbers-path"
                                                            d="M-10,20 60,20 40,50 a18,15 0 1,1 -12,19Q25,44 34.4,27.4 l7,-7 a16,16 0 0,1 22.6,22.6 l-30,30 l35,0 L69,73a20,10 0 0,1 20,10 a17,17 0 0,1 -34,0 L55,83l0,-61 L40,28" />
                                                    </svg>
                                                </div>
                                            </div>

                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- End Row -->
        </div> <!-- container -->
    </div>
    <!--End content -->

    <!-- Modal HTML -->

    <div class="overlay">
        <div class="modal__locked">
            <div class="modal-body">
                <center>
                    <div class="clock" style="margin: 2em;"></div>
                    <h5 class=" text-dark">Total candidates found from data Bank</h5>

                    <input type="hidden" value="{{ $jobPost->job_vacancy - 200 }}" id="counterValue" />

                    <button class="btn btn-warning" id="close_custome_modal" style="margin-top: 20px">Ok</button>
                </center>
            </div>
            {{-- <div class="modal-buttons">
                <button class="btn btn-footer btn-white">Cancel</button>
                <button class="btn btn-footer btn-purple">Upgrade</button>
            </div> --}}
        </div>
    </div>



    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/sass.js/0.6.2/sass.min.js"
        integrity="sha512-lmuNSGprTM9SdDQ8WuvkeGSgUn4R7jogp37VuQ8rrdNOSHQ9UDY9PF5f/gXjhMytuvxf3NADUXL+eb7K0DvIcw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <script>


    </script>
    <script>
        jQuery(function($) {

            $('#close_custome_modal').click(function() {
                $('.overlay').fadeOut(300);
            })


            //flip counter
            var clock;

            function flipCounter() {
                clock = new FlipClock($(".clock"), 300, {
                    clockFace: "Counter",
                    autoStart: true,
                    countdown: true
                });
            }

            $(document).ajaxSend(function() {
                $("#overlay").fadeIn(300);
            });
            $(".button").click(function() {
                //
                var max_vacancy = $(this).attr('value');
                var minimum_vacancy = parseInt(max_vacancy / 2)
                var random_vacancy = Math.floor(Math.random() * (max_vacancy - minimum_vacancy + 1) +
                    minimum_vacancy)

                $('#counterValue').val(50)
                $.ajax({
                    type: "GET",
                    success: function(data) {
                        // console.log(data);
                    }
                }).done(function() {
                    setTimeout(function() {
                        $("#overlay").fadeOut(300);

                        let timerInterval
                        Swal.fire({
                            title: 'Finding data form Data Bank',
                            html: '<h3>Checking <b></b> data</h3>',
                            timer: 10000,
                            timerProgressBar: true,
                            imageUrl: 'https://c.tenor.com/xyl_b-fpgWkAAAAd/matrix-green.gif',
                            imageHeight: 300,
                            imageWidth: 550,
                            imageAlt: 'Big image',
                            width: 600,
                            didOpen: () => {
                                Swal.showLoading()
                                const b = Swal.getHtmlContainer().querySelector(
                                    'b')
                                timerInterval = setInterval(() => {
                                    b.textContent = Swal.getTimerLeft()
                                }, 100)
                            },
                            willClose: () => {
                                clearInterval(timerInterval)
                            }
                        }).then((result) => {
                            /* Read more about handling dismissals below */
                            if (result.dismiss === Swal.DismissReason.timer) {

                                flipCounter()
                                $('.overlay').css('display', 'block');
                                // Swal.fire({
                                //     icon: 'success',
                                //     title: '<h1>' + random_vacancy +
                                //         '</h1>' +
                                //         '<h2> Candidates Matched </h2>',
                                //     imageHeight: 300,
                                //     imageWidth: 550,
                                //     imageAlt: 'Big image',
                                //     width: 600
                                // })
                            }
                        })


                        // Swal.fire({
                        //     icon: 'success',
                        //     title: random_vacancy + ' Candidates matched .',
                        //     imageHeight: 300,
                        //     imageWidth: 550,
                        //     imageAlt: 'Big image',
                        //     width: 600
                        // })
                    }, 3000);
                });
            });
        });
    </script>


@endsection

@section('DataTableJs')
    <!-- Datatables-->
    <script src="{{ asset('assets/plugins/datatables/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('assets/plugins/datatables/dataTables.bootstrap.js') }}"></script>
    <script src="{{ asset('assets/plugins/datatables/dataTables.buttons.min.js') }}"></script>
    <script src="{{ asset('assets/plugins/datatables/buttons.bootstrap.min.js') }}"></script>
    <script src="{{ asset('assets/plugins/datatables/jszip.min.js') }}"></script>
    <script src="{{ asset('assets/plugins/datatables/pdfmake.min.js') }}"></script>
    <script src="{{ asset('assets/plugins/datatables/vfs_fonts.js') }}"></script>
    <script src="{{ asset('assets/plugins/datatables/buttons.html5.min.js') }}"></script>
    <script src="{{ asset('assets/plugins/datatables/buttons.print.min.js') }}"></script>
    <script src="{{ asset('assets/plugins/datatables/dataTables.fixedHeader.min.js') }}"></script>
    <script src="{{ asset('assets/plugins/datatables/dataTables.keyTable.min.js') }}"></script>
    <script src="{{ asset('assets/plugins/datatables/dataTables.responsive.min.js') }}"></script>
    <script src="{{ asset('assets/plugins/datatables/responsive.bootstrap.min.js') }}"></script>
    <script src="{{ asset('assets/plugins/datatables/dataTables.scroller.min.js') }}"></script>
    <!-- Datatable init js -->
    <script src="{{ asset('assets/pages/datatables.init.js') }}"></script>
    <script src="{{ asset('assets/js/flipCounter.js') }}"></script>
@endsection
