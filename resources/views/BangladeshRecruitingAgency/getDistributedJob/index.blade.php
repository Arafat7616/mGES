@extends("BangladeshRecruitingAgency.master")

@section('title', 'Interested Job Posts')
@section('DataTableCss')
    <!-- DataTables -->
    <link href="{{ asset('assets/plugins/datatables/jquery.dataTables.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/plugins/datatables/buttons.bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/plugins/datatables/fixedHeader.bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
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
                        <h4 class="pull-left page-title">Interested Job Posts</h4>
                        <ol class="breadcrumb pull-right">
                            <li><a href="#">mGES</a></li>
                            <li><a href="#">Job Posts
                                </a></li>
                            <li class="active">Interested Job Posts</li>
                        </ol>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">Interested job posts in detail</h3>
                        </div>
                        <div class="panel-body">
                            <table id="datatable-buttons" class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th>SL No</th>
                                        <th>Recruiter Name</th>
                                        <th>Job Category</th>
                                        <th>Job Vacancies</th>
                                        <th>Applied Vacancies</th>
                                        <th>Applied Date</th>
                                        <th style="width: 8%">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($jobDistributeInBRAs as $braInterest)
                                        <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td>{{ $braInterest->jobPost->user->name ?? '-' }}</td>
                                            <td>{{ $braInterest->jobPost->job_category->category_name ?? '-' }}</td>
                                            <td>{{ $braInterest->jobPost->job_vacancy ?? '-' }}</td>
                                            <td>{{ $braInterest->jobPost->app_vacancy ?? '-' }}</td>
                                            <td>{{ $braInterest->jobPost->created_at }}</td>
                                            <td>
                                                @if ($braInterest->status == 'Rejected')
                                                @elseif ($braInterest->status == 'Approved')
                                                    <a class="btn btn-info btn-sm"
                                                        href="{{ route('BangladeshRecruitingAgency.jobPost.show', $braInterest->jobPost->id) }}">
                                                        <i class="mdi mdi-eye"></i>
                                                    </a>
                                                    {{-- <a class="btn btn-success btn-sm"
                                                        href="{{ route('BangladeshRecruitingAgency.jobPost.selectCandidates', $braInterest->id) }}">
                                                        <i class="fa fa-user-plus"></i>
                                                    </a> --}}
                                                @else
                                                    <a class="btn btn-info btn-sm"
                                                        href="{{ route('BangladeshRecruitingAgency.jobPost.show', $braInterest->jobPost->id) }}">
                                                        <i class="mdi mdi-eye"></i>
                                                    </a>
                                                @endif
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>SL No</th>
                                        <th>Recruiter Name</th>
                                        <th>Job Category</th>
                                        <th>Job Vacancies</th>
                                        <th>Applied Vacancies</th>
                                        <th>Applied Date</th>
                                        <th>Action</th>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div> <!-- End Row -->
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
