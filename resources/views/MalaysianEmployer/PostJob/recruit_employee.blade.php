@extends("MalaysianEmployer.master")

@section('title', 'Edit Job Post')
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
                        <h4 class="pull-left page-title">Edit Job Post</h4>
                        <ol class="breadcrumb pull-right">
                            <li><a href="#">Malaysian Employer</a></li>
                            <li><a href="#"> Job Posts</a></li>
                            <li class="active">Edit Job Post</li>
                        </ol>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <form action="{{ route('MalaysianEmployer.postJob.send', $job_post->id) }}" method="post"
                        enctype="multipart/form-data">
                        @csrf
                        <div class="panel panel-primary">
                            <input type="hidden" value="{{ $job_post->id }}" name="id">
                            @csrf
                            <div class="panel-heading">
                                <h3 class="panel-title">Edit appointment and job post</h3>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                   <div class="form-group">
                                                <label for="employmentType">Recruiting Type</label><br>
                                                <div class="radio radio-info radio-inline">
                                                    <input class="recriting_input" type="radio" id="inlineRadio1"
                                                        value="self" name="recruiting_type" checked="checked">
                                                    <label for="inlineRadio1"> Self Recruiting </label>
                                                </div>
                                                <div class="radio radio-inline">
                                                    <input class="recriting_input" type="radio" id="inlineRadio2"
                                                        value='agency' name="recruiting_type">
                                                    <label for="inlineRadio2"> Agency Recruiting </label>
                                                </div>

                                            </div>

                                            <div class="form-group Agencies-section" id="Agencies-section">
                                                <label for="agency_id">Agencies</label>
                                                <select class="form-control" name="agency_id" required="">
                                                    <option selected="" disabled="" value="null">Select Agency
                                                    </option>
                                                    @foreach ($malaysiaAgenies as $agency)
                                                        <option value={{ $agency->id }}>{{ $agency->company_name }}
                                                        </option>
                                                    @endforeach

                                                </select>
                                            </div>
                                </div>
                            </div>
                            <div class="panel-footer text-right">
                                <button type="submit" name="btnupdate" class="btn btn-primary float-right">Submit</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div> <!-- End Row -->
        </div> <!-- container -->
    </div>
    <!--End content -->
@endsection
@section('js')
<script>
    $('.recriting_input').click(function() {
        let value = $('input[name="recruiting_type"]:checked').val();

        if (value == "agency") {
            $('#Agencies-section').css('display', 'block')
        } else {
            $('#Agencies-section').css('display', 'none')
        }


    })
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
