@extends("MalaysianEmployer.master")

@section('title', 'Distributed Job')
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
                        <h4 class="pull-left page-title">Distributed Job</h4>
                        <ol class="breadcrumb pull-right">
                            <li><a href="#">mGES</a></li>
                            <li><a href="#">Distributed Job</a></li>
                            <li class="active">Posted Jobs</li>
                        </ol>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">Distributed Job</h3>
                        </div>
                        <div class="panel-body">
                            <table id="datatable-buttons" class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th>SL No</th>
                                        <th>BRA</th>
                                        <th>Distributed Category</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($jobPosts as $jobPost)
                                        @foreach ($jobPost->jobDistributedBras as $jobDistributedBra)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>{{ $jobDistributedBra->bra->name ?? '-' }}</td>
                                                <td>{{ $jobDistributedBra->distributed_vacancy ?? '-' }}</td>
                                                <td>
                                                    <a class="btn btn-info btn-sm"
                                                        href="{{ route('MalaysianEmployer.postJob.show', $jobPost->id) }}">
                                                        <i class="fa fa-eye"></i>
                                                    </a>
                                                    <a class="btn btn-info btn-sm" target="_blank"
                                                        href="{{ url('job-post/demand-latter/'.$jobPost->id.'/' . $jobDistributedBra->id) }}">
                                                        <i class="fa fa-file"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                        @endforeach
                                    @endforeach
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>SL No</th>
                                        <th>BRA</th>
                                        <th>Distributed Category</th>
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
