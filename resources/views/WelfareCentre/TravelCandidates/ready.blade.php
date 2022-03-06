@extends("WelfareCentre.master")

@section('title', 'All Job Posts')
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
                        <h4 class="pull-left page-title">Travelled candidates</h4>
                        <ol class="breadcrumb pull-right">
                            <li><a href="#">Welfare Centre</a></li>
                            <li><a href="#"> Travelled candidates </a></li>
                            <li class="active">Received Candidates List</li>
                        </ol>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">Received Candidates List</h3>
                        </div>
                        <div class="panel-body">
                            <table id="datatable-buttons" class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th>SL No</th>
                                        <th>Travel Agency</th>
                                        <th>Candidate Name</th>
                                        <th>Job Category</th>
                                        <th>Email</th>
                                        <th>Phone</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($offeredCandidates as $offeredCandidate)
                                        <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td>{{ $offeredCandidate->travelAgency->company_name }}</td>
                                            <td>{{ $offeredCandidate->candidate_name }}</td>
                                            <td>{{ $offeredCandidate->job_category->category_name }}</td>
                                            <td>{{ $offeredCandidate->candidate_email }}</td>
                                            <td>{{ $offeredCandidate->phone_number }}</td>
                                            <td>
                                                @if ($offeredCandidate->travel_status == 'Forwarded')
                                                    <button type="button"
                                                        class="btn btn-success btn-xs">Candidate-Received</button>
                                                @elseif($offeredCandidate->travel_status == "Activated")
                                                    <button type="button" class="btn btn-success btn-xs">Activated</button>
                                                @endif
                                            </td>
                                            <td>
                                                @if ($offeredCandidate->travel_status == 'Forwarded')
                                                    <a class="btn btn-info btn-xs" href="#">
                                                        <i class="fa fa-edit"></i>
                                                    </a>
                                                @endif
                                                <a class="btn btn-info btn-xs" href="{{ route('WelfareCentre.travelCandidate.showReceivedCandidate', $offeredCandidate->id) }}">
                                                    <i class="fa fa-eye"></i>
                                                </a>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>SL No</th>
                                        <th>Travel Agency</th>
                                        <th>Candidate Name</th>
                                        <th>Job Category</th>
                                        <th>Email</th>
                                        <th>Phone</th>
                                        <th>Status</th>
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
