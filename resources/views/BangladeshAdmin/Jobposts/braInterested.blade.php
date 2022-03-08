@extends("BangladeshAdmin.master")

@section('title', 'Interested job posts')
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
    <link href="{{ asset('assets/css/customeModal.css') }}" rel="stylesheet" type="text/css" />
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
                                        <th>Interested BRA</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($jobPosts as $jobPost)
                                        <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td>{{ $jobPost->user->name }}</td>
                                            <td>{{ $jobPost->job_category->category_name }}</td>
                                            <td>{{ $jobPost->created_at }}</td>
                                            <td>{{ $jobPost->job_vacancy }}</td>
                                            <td>
                                                @forelse($jobPost->braInterests as $braInterest)
                                                    <a target="_blank"
                                                        href="{{ route('BangladeshAdmin.company.showCompanyProfile', $braInterest->bra->id) }}">
                                                        <span
                                                            class="badge badge-info">{{ $braInterest->bra->name }}</span>
                                                    </a>
                                                @empty
                                                    <span class="badge badge-warning">No BRA Found</span>
                                                @endforelse
                                            </td>
                                            <td>
                                                <a class="btn btn-info" target="_blank"
                                                    href="{{ route('BangladeshAdmin.JobPostShow', $jobPost->id) }}">
                                                    <i class="fa fa-eye"></i> View job post
                                                </a>

                                                @if ($jobPost->jobDistributedBras->count() > 0)
                                                    <a class="btn btn-warning" disabled fhgkd="{{ $jobPost->id }}"
                                                        value="{{ $jobPost->job_vacancy }}" href="javascript:void(0);">
                                                        <i class="fa fa-sitemap"></i>Distribute candidates
                                                    </a>
                                                    @if ($jobPost->jobDistributedBras->where('memp_status', 'Demand')->count() > 0)
                                                        <a class="btn btn-success" disabled href="javascript:void(0);">
                                                            <i class="fa fa-pdf"></i>Send Demand Letter
                                                        </a>
                                                    @else
                                                        <a class="btn btn-success"
                                                            href="{{ route('BangladeshAdmin.jobPost.sendDemandLetter', $jobPost->id) }}">
                                                            <i class="fa fa-pdf"></i>Send Demand Letter
                                                        </a>
                                                    @endif

                                                @else
                                                    <a class="btn btn-warning button" fhgkd="{{ $jobPost->id }}"
                                                        value="{{ $jobPost->job_vacancy }}" href="javascript:void(0);">
                                                        <i class="fa fa-sitemap"></i>Distribute candidates
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
                                        <th>Interested BRA</th>
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
                                                            d="M-10,20 60,20 40,50 a18,15 0 1,1 -12,19
                                                                                                                                                                                                                                                     Q25,44 34.4,27.4
                                                                                                                                                                                                                                                     l7,-7 a16,16 0 0,1 22.6,22.6 l-30,30 l35,0 L69,73
                                                                                                                                                                                                                                                     a20,10 0 0,1 20,10 a17,17 0 0,1 -34,0 L55,83
                                                                                                                                                                                                                                                     l0,-61 L40,28" />
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


    <div class="overlay">
        <div class="modal__locked">
            <div class="modal-body">
                <center id="custome_modal_body">




                </center>

            </div>


        </div>
    </div>



    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

    <script>
        jQuery(function($) {
            $(document).on('click', '#close_custome_modal', function() {
                $('.overlay').fadeOut(300);
                location.reload();

            })
            $(document).ajaxSend(function() {
                $("#overlay").fadeIn(300);
            });
            $(".button").click(function() {
                //
                var max_vacancy = $(this).attr('value');
                var id = $(this).attr('fhgkd');
                // console.log(id)
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


                        // var modalTitle =
                        var url = '/bangladesh-admin/distribute-candidates/' + id;
                        $.ajax({
                            method: 'GET',
                            url: url,
                            headers: {
                                'X-CSRF-TOKEN': "{{ csrf_token() }}",
                            },
                            success: function(data) {

                                $("#overlay").fadeOut(300);
                                console.log(data);
                                $('#custome_modal_body').html(data);
                                $('.overlay').css('display', 'block');



                            },
                        })
                    }, 3500);
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
