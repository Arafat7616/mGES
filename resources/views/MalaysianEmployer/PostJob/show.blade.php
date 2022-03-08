@extends("MalaysianEmployer.master")

@section('title', 'Posted Jobs')
@section('DataTableCss')
    <!-- DataTables -->
    <link href="{{ asset('assets/plugins/datatables/jquery.dataTables.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/plugins/datatables/buttons.bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/plugins/datatables/fixedHeader.bootstrap.min.css') }}" rel="stylesheet"
        type="text/css" />
    <link href="{{ asset('assets/plugins/datatables/responsive.bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/plugins/datatables/dataTables.bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/plugins/datatables/scroller.bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
@endsection

@section('main-content')
    <!-- Start content -->
    <div class="content">
        <div class="container">
            <!-- Page-Title -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="page-header-title">
                        <h4 class="pull-left page-title">Job Category</h4>
                        <ol class="breadcrumb pull-right">
                            <li><a href="#">mGES</a></li>
                            <li><a href="#">Job Category</a></li>
                            <li class="active">Posted Jobs</li>
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

                            <h4 style="font-weight:bolder;text-align:center;">{{ $job_post->company_name}}</h4>

                            <h6 style="text-align:center;">recruiter@gmail.com</h6>

                            <ul class="list-group list-group-unbordered mb-3">
                                 <li class="list-group-item">
                                <center><b><i class="fa fa-book mr-1"></i>Schedule Detials </b> </center>
                              </li>
                              <li class="list-group-item">
                                <b>Post Id: &nbsp; &nbsp;</b> <a class="float-right">{{ $job_post->id}}</a>
                              </li>
                              <li class="list-group-item">
                                <b>Appointment Date</b> <a class="float-right">{{ $job_post->appointment_date}}</a>
                              </li>
                              <li class="list-group-item">
                                <b>Appointment Time</b> <a class="float-right">{{ $job_post->appointment_time}}</a>
                              </li>
                              <li class="list-group-item">
                                <b>Job Posted by</b> <a class="float-right">Employer</a>
                              </li>
                              <li class="list-group-item">
                                <b>Status &nbsp; &nbsp;</b>
                                @if ($job_post->status == 'New')
                                                    <button type="button" name="New"
                                                        class="btn btn-primary btn-xs update">New</button>
                                                @elseif ($job_post->status == "Rejected")
                                                    <button type="button" name="Rejected"
                                                        class="btn btn-warning btn-xs update">Rejected</button>
                                                @elseif ($job_post->status == "Pending")
                                                    <button type="button" name="Pending"
                                                        class="btn btn-warning btn-xs update">Pending</button>
                                                @elseif ($job_post->status == "Approved")
                                                    <button type="button" name="Approved"
                                                        class="btn btn-success btn-xs update">Approved</button>
                                                @elseif ($job_post->status == "Verified")
                                                    <button type="button" name="Verified"
                                                        class="btn btn-info btn-xs update">Verified</button>
                                                @elseif ($job_post->status == "Applied")
                                                    <button type="button" name="Applied"
                                                        class="btn btn-info btn-xs update">Applied</button>
                                                @endif
                              </li>
                            </ul>



                          </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">About Jobs</h3>
                        </div>
                        <div class="panel-body">
                            <strong><i class="fa fa-book mr-1"></i> Job Category</strong>
                            <p class="text-muted">{{ $job_post->job_category->category_name}}</p>

                            <hr>

                            <strong><i class="fa fa-pencil mr-1"></i> Employment Type</strong>
                            <p class="text-muted">{{ $job_post->employment_type}}</p>

                            <hr>

                            <strong><i class="fa fa-map mr-1"></i> Job Location</strong>
                            <p class="text-muted">{{ $job_post->job_location}}</p>

                            <hr>

                            <strong><i class="fa fa-calendar mr-1"></i> End Date</strong>
                            <p class="text-muted">{{ $job_post->end_date}}</p>
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
                            <p class="text-muted">{{ $job_post->job_vacancy}}</p>

                            <hr>

                            <strong><i class="fa fa-user mr-1"></i> Gender</strong>
                            <p class="text-muted">{{ $job_post->gender}}</p>

                            <hr>

                            <strong><i class="fa fa-user mr-1"></i> Age Limit</strong>
                            <p class="text-muted">{{ $job_post->age_limit}}</p>

                            <hr>

                            <strong><i class="fa fa-money mr-1"></i> Salary</strong>
                            <p class="text-muted">{{ $job_post->salary}}</p>
                          </div>
                    </div>
                </div>

            </div>

            @if($rec_agency->count() > 0)

            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">Selected Bangladesh Recruiting Agencies</h3>
                        </div>
                        <div class="panel-body">
                            <table id="datatable-buttons" class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th>Select</th>
                                        <th>SL No</th>
                                        <th>Bangladesh Recruiting Agency Name</th>
                                        <th>Employer Amount</th>
                                        <th>Demad Letter</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($rec_agency as $key=>$agency)
                                    <tr>
                                        <td><input type="checkbox" checked/></td>
                                        <td>{{ $loop->iteration }}</td>
                                        <td>{{ $agency->bra ? $agency->bra->name : '' }}</td>
                                        <td>{{ $agency->distributed_vacancy }}</td>
                                        <td>
                                            <a class="btn btn-info btn-sm"
                                                href="{{ route('postJob.viewDemandLetter',$agency->job_post_id) }}">
                                                <i class="fa fa-file"></i>
                                            </a>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                                {{-- <tfoot>
                                    <tr>
                                        <th>Select<th>
                                            <th>SL No</th>
                                            <th>Agency Name</th>
                                            <th>Employer Amount</th>
                                            <th>Demad Letter</th>
                                    </tr>
                                </tfoot> --}}
                            </table>

                            @if($job_post->forward_to_bhc == 0)
                            <div class="row">
                                <div class="col-md-4"></div>
                                <div class="col-md-4">
                                    <a href="{{ route('MalaysianEmployer.postJob.forward_to_bhc',$job_post->id) }}" class="btn btn-primary btn-block text-center mx-auto">
                                        <b><i class="fa fa-send"></i> Forward To Bangladesh High Comission </b>
                                    </a>
                                </div>
                                <div class="col-md-4"></div>
                            </div>
                            @endif

                        </div>
                    </div>
                </div>
            </div>

            @endif
        </div> <!-- container -->
    </div>
    <!--End content -->
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
