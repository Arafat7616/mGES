@extends("WelfareCentre.master")

@section('title', 'Change of visa requests')
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
                        <h4 class="pull-left page-title">Change of visa Request</h4>
                        <ol class="breadcrumb pull-right">
                            <li><a href="#">Welfare Centre</a></li>
                            <li><a href="#"> WSC registered users
                                </a></li>
                            <li class="active">Change of visa Request</li>
                        </ol>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">Change of visa Requests</h3>
                        </div>
                        <div class="panel-body">
                            <table id="datatable-buttons" class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th>SL No</th>
                                        <th>User name</th>
                                        <th>Service apply for</th>
                                        <th>Applied on</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($changeVisaServices as $changeVisaService)
                                        <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td>{{ $changeVisaService->candidate->candidate_name }}</td>
                                            <td>{{ $changeVisaService->service_type }}</td>
                                            <td>{{ $changeVisaService->created_at }}</td>
                                            <td>
                                                @if ($changeVisaService->service_status == 'Open')
                                                    <button type="button" class="btn btn-success btn-xs">Open</button>
                                                @elseif($changeVisaService->service_status == "On Process")
                                                    <button type="button" class="btn btn-success btn-xs">On Process</button>
                                                @elseif($changeVisaService->service_status == "Completed")
                                                    <button type="button" class="btn btn-success btn-xs">Completed</button>
                                                @elseif($changeVisaService->service_status == "Not Completed")
                                                    <button type="button" class="btn btn-success btn-xs">Not
                                                        Completed</button>
                                                @else
                                                    <button type="button"
                                                        class="btn btn-success btn-xs">{{ $changeVisaService->service_status }}</button>
                                                @endif
                                            </td>
                                            <td>
                                                <a class="btn btn-info btn-xs"
                                                    href="{{ route('WelfareCentre.showCandidateProfile', $changeVisaService->candidate->offered_candidate->id) }}"><i
                                                        class="fa fa-eye"></i></a>
                                                <a class="btn btn-primary btn-xs"
                                                    href="{{ route('WelfareCentre.changeOfVisa.upload', $changeVisaService->id) }}"><i
                                                        class="fa fa-edit"></i></a>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>SL No</th>
                                        <th>User name</th>
                                        <th>Service apply for</th>
                                        <th>Applied on</th>
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
