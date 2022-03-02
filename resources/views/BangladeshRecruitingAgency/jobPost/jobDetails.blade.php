@extends("BangladeshRecruitingAgency.master")

@section('title', 'View Job Post')
@section('DataTableCss')

@endsection

@section('main-content')
    <!-- Start content -->
    <div class="content">
        <div class="container">
            <!-- Page-Title -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="page-header-title">
                        <h4 class="pull-left page-title">View Job Post</h4>
                        <ol class="breadcrumb pull-right">
                            <li><a href="#">Job Posts</a></li>
                            <li><a href="#">Bangladesh Recruiting Agency</a></li>
                            <li><a href="#"> View Job Post </a></li>
                        </ol>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="panel panel-primary panel-outline">
                        <div class="panel-body box-profile">
                            <!--<div class="text-center">-->
                            <!--  <img class="profile-user-img img-fluid img-circle"-->
                            <!--       src="../logo/c40536ff06b265135d3cc15fa29f386b1596020761.JPG" width="28px" height="28px"-->
                            <!--       alt="User profile picture">-->
                            <!--</div>-->

                            <h3 style="font-weight:bolder;text-align:center;color:blue;">Company Details</h3>

                            <h4 style="font-weight:bolder;text-align:center;">{{ $job_post->user->name }}</h4>

                            <h6 style="text-align:center;">{{ $job_post->user->email }}</h6>

                            <ul class="list-group list-group-unbordered mb-3">
                                <li class="list-group-item">
                                    <center><b><i class="fa fa-book mr-1"></i>Schedule Detials </b> </center>
                                </li>
                                <li class="list-group-item">
                                    <b>Appointment Date</b> <a class="float-right">{!! date('d/M/y', strtotime($job_post->appointment_date)) !!}
                                    </a>
                                </li>
                                <li class="list-group-item">
                                    <b>Appointment Time</b> <a
                                        class="float-right">{{ date('H:i:s', strtotime($job_post->appointment_time)) }}</a>
                                </li>
                                <li class="list-group-item">
                                    <b>Job Posted by</b> <a class="float-right">Employer</a>
                                </li>
                            </ul>


                            <a href="../demandletter/172745224_23847221674930487_737226822608284999_n.jpg " download=""
                                class="btn btn-defult btn-block">
                                <b><i class="fa fa-download"></i> Demand Letter </b>
                            </a>

                            <div class="job_approved_button">

                                @if (Auth::user()->braInterested)
                                    <a href="#" class="btn btn-success waves-effect waves-light" disabled>Interested</a>
                                @else
                                    <a href="{{ route('BangladeshRecruitingAgency.jobPost.jobIntersted', $job_post->id) }}"
                                        class="btn btn-success waves-effect waves-light">Interested</a>
                                @endif


                                <a class="btn btn-warning waves-effect waves-light" href="{{ URL('/') }}">Skip</a>
                            </div>


                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">About Jobs pp</h3>
                        </div>
                        <div class="panel-body">
                            <strong><i class="fa fa-book mr-1"></i> Job Category</strong>
                            <p class="text-muted">{{ $job_post->job_category->category_name }}</p>

                            <hr>

                            <strong><i class="fa fa-pencil mr-1"></i> Employment Type</strong>
                            <p class="text-muted">{{ $job_post->employment_type }}</p>

                            <hr>

                            <strong><i class="fa fa-map mr-1"></i> Job Location</strong>
                            <p class="text-muted">{{ $job_post->job_location }}</p>

                            <hr>

                            <strong><i class="fa fa-calendar mr-1"></i> End Date</strong>
                            <p class="text-muted">{!! date('d/M/y', strtotime($job_post->end_date)) !!}</p>


                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">About candidate</h3>
                        </div>
                        <div class="panel-body">
                            <strong><i class="fa fa-users mr-1"></i> Job Vacancy</strong>
                            <p class="text-muted">{{ $job_post->job_vacancy }}</p>

                            <hr>

                            <strong><i class="fa fa-user mr-1"></i> Gender</strong>
                            <p class="text-muted">{{ $job_post->gender }}</p>

                            <hr>

                            <strong><i class="fa fa-user mr-1"></i> Age Limit</strong>
                            <p class="text-muted">{{ $job_post->age_limit }}</p>

                            <hr>

                            <strong><i class="fa fa-money mr-1"></i> Salary</strong>
                            <p class="text-muted">{{ $job_post->salary }}</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4"></div>

                {{-- <div class="col-md-8">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">About Jobs</h3>
                        </div>
                        <div class="panel-body">
                            <strong><i class="fa fa-calendar mr-1"></i> QR Code</strong>
                            <br>
                            <p class="text-center">
                                {!! QrCode::size(200)->generate(url('/qr_code_result')) !!}
                            </p>
                        </div>
                    </div>
                </div> --}}
            </div>

        </div> <!-- container -->
    </div>
    <!--End content -->
@endsection

@section('DataTableJs')

@endsection
