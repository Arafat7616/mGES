@extends("BangladeshAdmin.master")

@section('title', 'Company Request')
@section('DataTableCss')
    <!-- DataTables -->
    <link href="{{ asset('assets/plugins/datatables/jquery.dataTables.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/plugins/datatables/buttons.bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/plugins/datatables/fixedHeader.bootstrap.min.css') }}" rel="stylesheet"
        type="text/css" />
    <link href="{{ asset('assets/plugins/datatables/responsive.bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/plugins/datatables/dataTables.bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/plugins/datatables/scroller.bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/css/approval_vacancy.css') }}" rel="stylesheet" type="text/css" />
@endsection

@section('main-content')
    <style>
        .join {
            text-align: center;
            margin: 10px 0;
        }

        .overlay {
            display: none;
            background: rgba(0, 0, 0, 0.4);
            height: 100%;
            width: 100%;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 999;
        }

        .overlay .modal__locked {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 450px;
            height: 260px;
            background: white;
            border-radius: 5px;
        }

        .overlay .modal__locked .modal-body {
            position: absolute;
            top: 45%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 90%;
        }

        .overlay .modal__locked .modal-body center {
            margin: 20px;
        }

        .overlay .modal__locked .modal-body center strong {
            font-size: 25px;
            position: relative;
            top: -30px;
        }

        .overlay .modal__locked .modal-body center p {
            position: relative;
            top: -10px;
            font-size: 13px;
        }

        .overlay .modal__locked .modal-buttons {
            position: absolute;
            bottom: 30px;
            right: 10px;
        }

        .overlay .btn {
            border: none;
            padding: 10px 15px;
            font-size: 16px;
            font-weight: 600;
            border-radius: 10px;
            width: 145px;
            height: 45px;
            box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.3);
            margin: 0 10px;
            color: rgba(0, 0, 0, 0.5);
        }

        .overlay .modal__locked .modal-buttons button.btn-purple {
            background: rgba(150, 39, 234, 1);
            color: white;
        }

    </style>
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
                                            <svg id="wrap" width="300" height="300">
                                                <!-- background -->
                                                <svg>
                                                    <circle cx="150" cy="150" r="130"
                                                        style="stroke: lightblue; stroke-width: 18; fill: transparent;" />
                                                    <circle cx="150" cy="150" r="115" style="fill: #77afb5;" />
                                                    <path
                                                        style="
                                                                                                                                                                                                                                                                                                                                                                                                                    stroke: #1f244f;
                                                                                                                                                                                                                                                                                                                                                                                                                    stroke-dasharray: 820;
                                                                                                                                                                                                                                                                                                                                                                                                                    stroke-dashoffset: 820;
                                                                                                                                                                                                                                                                                                                                                                                                                    stroke-width: 18;
                                                                                                                                                                                                                                                                                                                                                                                                                    fill: transparent;
                                                                                                                                                                                                                                                                                                                                                                        "
                                                        d="M150,150 m0,-130 a 130,130 0 0,1 0,260 a 130,130 0 0,1 0,-260">
                                                        <animate attributeName="stroke-dashoffset" dur="6s" to="-820"
                                                            repeatCount="indefinite" />
                                                    </path>
                                                </svg>

                                                <!-- image -->
                                                <svg>
                                                    <path id="hourglass"
                                                        d="M150,150 C60,85 240,85 150,150 C60,215 240,215 150,150 Z"
                                                        style="stroke: red; stroke-width: 5; fill: yellow;" />

                                                    <path id="frame"
                                                        d="M100,97 L200, 97 M100,203 L200,203 M110,97 L110,142 M110,158 L110,200 M190,97 L190,142 M190,158 L190,200 M110,150 L110,150 M190,150 L190,150"
                                                        style="stroke: green; stroke-width: 6; stroke-linecap: round;" />

                                                    <animateTransform xlink:href="#frame" attributeName="transform"
                                                        type="rotate" begin="0s" dur="3s"
                                                        values="0 150 150; 0 150 150; 180 150 150" keyTimes="0; 0.8; 1"
                                                        repeatCount="indefinite" />
                                                    <animateTransform xlink:href="#hourglass" attributeName="transform"
                                                        type="rotate" begin="0s" dur="3s"
                                                        values="0 150 150; 0 150 150; 180 150 150" keyTimes="0; 0.8; 1"
                                                        repeatCount="indefinite" />
                                                </svg>

                                                <!-- sand -->
                                                <svg>
                                                    <!-- upper part -->
                                                    <polygon id="upper" points="120,125 180,125 150,147"
                                                        style="fill: #2c3e50;">
                                                        <animate attributeName="points" dur="3s" keyTimes="0; 0.8; 1"
                                                            values="120,125 180,125 150,147; 150,150 150,150 150,150; 150,150 150,150 150,150"
                                                            repeatCount="indefinite" />
                                                    </polygon>

                                                    <!-- falling sand -->
                                                    <path id="line" stroke-linecap="round" stroke-dasharray="1,4"
                                                        stroke-dashoffset="200.00" stroke="#2c3e50" stroke-width="2"
                                                        d="M150,150 L150,198">
                                                        <!-- running sand -->
                                                        <animate attributeName="stroke-dashoffset" dur="3s" to="1.00"
                                                            repeatCount="indefinite" />
                                                        <!-- emptied upper -->
                                                        <animate attributeName="d" dur="3s" to="M150,195 L150,195"
                                                            values="M150,150 L150,198; M150,150 L150,198; M150,198 L150,198; M150,195 L150,195"
                                                            keyTimes="0; 0.65; 0.9; 1" repeatCount="indefinite" />
                                                        <!-- last drop -->
                                                        <animate attributeName="stroke" dur="3s" keyTimes="0; 0.65; 0.8; 1"
                                                            values="#2c3e50;#2c3e50;transparent;transparent"
                                                            to="transparent" repeatCount="indefinite" />
                                                    </path>

                                                    <!-- lower part -->
                                                    <g id="lower">
                                                        <path d="M150,180 L180,190 A28,10 0 1,1 120,190 L150,180 Z"
                                                            style="stroke: transparent; stroke-width: 5; fill: #2c3e50;">
                                                            <animateTransform attributeName="transform" type="translate"
                                                                keyTimes="0; 0.65; 1" values="0 15; 0 0; 0 0" dur="3s"
                                                                repeatCount="indefinite" />
                                                        </path>
                                                        <animateTransform xlink:href="#lower" attributeName="transform"
                                                            type="rotate" begin="0s" dur="3s"
                                                            values="0 150 150; 0 150 150; 180 150 150" keyTimes="0; 0.8; 1"
                                                            repeatCount="indefinite" />
                                                    </g>

                                                    <!-- lower overlay - hourglass -->
                                                    <path d="M150,150 C60,85 240,85 150,150 C60,215 240,215 150,150 Z"
                                                        style="stroke: white; stroke-width: 5; fill: transparent;">
                                                        <animateTransform attributeName="transform" type="rotate" begin="0s"
                                                            dur="3s" values="0 150 150; 0 150 150; 180 150 150"
                                                            keyTimes="0; 0.8; 1" repeatCount="indefinite" />
                                                    </path>

                                                    <!-- lower overlay - frame -->
                                                    <path id="frame" d="M100,97 L200, 97 M100,203 L200,203"
                                                        style=" stroke: lightblue; stroke-width: 6; stroke-linecap:  round;">
                                                        <animateTransform attributeName="transform" type="rotate" begin="0s"
                                                            dur="3s" values="0 150 150; 0 150 150; 180 150 150"
                                                            keyTimes="0; 0.8; 1" repeatCount="indefinite" />
                                                    </path>
                                                </svg>
                                            </svg>
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
                    <strong>Locked Feature</strong>
                    <p>
                        This offer is not valid for your plan. Please upgrade your account to enjoy more features.
                    </p>
                </center>
            </div>
            <div class="modal-buttons">
                <button class="btn btn-footer btn-white">Cancel</button>
                <button class="btn btn-footer btn-purple">Upgrade</button>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script>

    </script>
    <script>
        jQuery(function($) {
            $(document).ready(function() {


            })
            $(document).ajaxSend(function() {
                $("#overlay").fadeIn(300);
            });
            $(".button").click(function() {
                //
                var max_vacancy = $(this).attr('value');
                var minimum_vacancy = parseInt(max_vacancy / 2)
                var random_vacancy = Math.floor(Math.random() * (max_vacancy - minimum_vacancy + 1) +
                    minimum_vacancy)
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
                            timer: 5000,
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
                            // willClose: () => {
                            //     clearInterval(timerInterval)
                            // }
                        }).then((result) => {
                            /* Read more about handling dismissals below */
                            if (result.dismiss === Swal.DismissReason.timer) {
                                // $('.overlay').css('display', 'block');
                                Swal.fire({
                                    icon: 'success',
                                    title: '<h1>' + random_vacancy +
                                        '</h1>' +
                                        '<h2> Candidates Matched </h2>',
                                    imageHeight: 300,
                                    imageWidth: 550,
                                    imageAlt: 'Big image',
                                    width: 600
                                })
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
                    }, 9000);
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
@endsection
