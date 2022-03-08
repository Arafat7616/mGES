@extends("MalaysianEmployer.master")

@section('title', 'Approved Request')
@section('DataTableCss')
    <!-- DataTables -->
    <link href="{{ asset('assets/plugins/datatables/jquery.dataTables.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/plugins/datatables/buttons.bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/plugins/datatables/fixedHeader.bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/plugins/datatables/responsive.bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/plugins/datatables/dataTables.bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/plugins/datatables/scroller.bootstrap.min.css') }}" rel="stylesheet" type="text/css" />

    <link href="{{ asset('assets/review/main.css') }}" rel="stylesheet" type="text/css" />

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- SweetAlert2 -->
    {{-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.all.min.js"></script> --}}
@endsection

@section('main-content')
    <!-- Start content -->
    <div class="content">
        <div class="container">
            <!-- Page-Title -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="page-header-title">
                        <h4 class="pull-left page-title">Rejected Requests</h4>
                        <ol class="breadcrumb pull-right">
                            <li><a href="#">mGES</a></li>
                            <li><a href="#">Rejected Call Center Requests</a></li>
                            <li class="active">Rejected Requests</li>
                        </ol>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-primary">


                        <div class="panel-heading">
                            <h3 class="panel-title">Bangladesh Recruiting Agency List</h3>
                        </div>
                        <div class="panel-body">
                            <table id="datatable-buttons" class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th>SL No</th>

                                        <th>Company Name</th>

                                        <th>Email</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($agency as $agency)
                                        <tr>
                                            <td>{{ $loop->iteration }}</td>

                                            <td>{{ $agency->company_name }}</td>

                                            <td>{{ $agency->email }}</td>
                                            <td style="text-align: center">
                                                @if($agency->star)
                                                <div class="ratings" style="margin: 21px 0px 17px 0px;" >
                                                    <span class="rating-box" >
                                                        @for($i=0; $i< number_format($agency->star->ratings); $i++)
                                                        <i class="fa fa-star" style="color: orange; font-size: 18px"></i>
                                                        @endfor
                                                    </span>
                                                </div>
                                                @else

                                                @endif
                                            </td>
                                            <td>
                                                <div class="join">
                                                    <button class="btn2 btn-join" {{ $agency->star ? 'disabled' : '' }} onclick="Show('How did you like: {{ $agency->company_name }} ?','{{ url('review_modal/'.$agency->id) }}')">
                                                        Rate Here 😁
                                                    </button>
                                                </div>
                                            </td>
                                        </tr>




                                    </div>
                                    @endforeach
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>SL No</th>

                                        <th>Company Name</th>

                                        <th>Email</th>
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


    <script>
        $(document).on("click", "#submit", function(e) {
            swal("Good job!", "You rated 4.5 Star", "success");

            modal.style.display = "none";
        });
    </script>

    {{-- <script>
        const button = document.querySelector(".btn-join");
        const modal = document.querySelector(".overlay");
        const close = document.querySelector(".close");
        button.addEventListener("click", function() {
            modal.style.display = "block";
        });
        close.addEventListener("click", function() {
            modal.style.display = "none";
        });

        document.body.addEventListener("click", function(e) {
            if (e.target.classList[0] === "overlay") {
                modal.style.display = "none";
            }
        });
    </script> --}}
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
