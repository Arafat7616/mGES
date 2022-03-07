@extends("BangladeshAdmin.master")

@section('title', 'Company Request')
@section('DataTableCss')
<!-- DataTables -->
<link href="{{ asset('assets/plugins/datatables/jquery.dataTables.min.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('assets/plugins/datatables/buttons.bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('assets/plugins/datatables/fixedHeader.bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('assets/plugins/datatables/responsive.bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('assets/plugins/datatables/dataTables.bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('assets/plugins/datatables/scroller.bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ asset('assets/css/approval_vacancy.css') }}" rel="stylesheet" type="text/css" />


@endsection

@section('main-content')
<!-- Start content -->
<div class="content">
    <div class="container">
        <!-- Page-Title -->
        <div class="row">
            <div class="col-sm-12">
                <div class="page-header-title">
                    <h4 class="pull-left page-title">Approval Job Posts Vacancy</h4>
                    <ol class="breadcrumb pull-right">
                        <li><a href="#">mGES</a></li>
                        <li><a href="#">Job Posts</a></li>
                        <li class="active">Approval Vacancy</li>
                    </ol>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Applied vacancies for the job posts</h3>
                    </div>
                    <div class="panel-body">
                        <table id="datatable-buttons" class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th>SL No</th>
                                    <th>Recruiter Name</th>
                                    <th>Company Name</th>
                                    <th>Job Category</th>
                                    <th>Job Vacancies</th>
                                    <th>Applied Vacancies</th>
                                    <th>Approved Vacancies</th>
                                    <th>Applied Date</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($appliedVacancies as $appliedVacancy)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $appliedVacancy->jobPost->company->user_name }}</td>
                                    <td>{{ $appliedVacancy->jobPost->user->company_name }}</td>
                                    <td>{{ $appliedVacancy->jobPost->job_category->category_name }}</td>
                                    <td>{{ $appliedVacancy->job_vacancy }}</td>
                                    <td>{{ $appliedVacancy->applied_vacancy }}</td>
                                    <td>{{ $appliedVacancy->approved_vacancy }}</td>
                                    <td>{{ $appliedVacancy->datetime }}</td>
                                    <td>
                                        @if ($appliedVacancy->status == 'Applied')
                                        <span class="badge badge-info">Applied</span>
                                        @elseif($appliedVacancy->status == 'Rejected')
                                        <span class="badge badge-danger">Rejected</span>
                                        @elseif($appliedVacancy->status == 'Approved')
                                        <span class="badge badge-success">Approved</span>
                                        @else
                                        <span class="badge badge-info">{{ $appliedVacancy->status }}</span>
                                        @endif
                                    </td>
                                    <td>
                                        @if ($appliedVacancy->status == 'Applied')
                                        <a class="btn btn-info btn-xs" href="{{ route('BangladeshAdmin.jobPost.viewVacancy', $appliedVacancy->id) }}">
                                            <i class="fa fa-eye"></i>
                                        </a>
                                        <a class="btn btn-success btn-xs" href="{{ route('BangladeshAdmin.jobPost.approveVacancy', $appliedVacancy->id) }}">
                                            <i class="fa fa-edit"></i>
                                        </a>

                                        <button type="button" class="btn btn-danger btn-xs" onclick="reject(this)" value="{{ route('BangladeshAdmin.jobPost.rejectVacancy', $appliedVacancy->id) }}">
                                            <i class="fa fa-times" aria-hidden="true"></i>
                                        </button>
                                        @else
                                        <a class="btn btn-info btn-xs" href="{{ route('BangladeshAdmin.jobPost.viewVacancy', $appliedVacancy->id) }}">
                                            <i class="fa fa-eye"></i>
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
                                    <th>Company Name</th>
                                    <th>Job Category</th>
                                    <th>Job Vacancies</th>
                                    <th>Applied Vacancies</th>
                                    <th>Approved Vacancies</th>
                                    <th>Applied Date</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>

                            </tfoot>

                        </table>
                        <div class='text-center'>

                            <button id="button" type="button" class="btn btn-info">Data Synchronize</button>

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
                  <path
                    class="demo__num-join-1-2"
                    d="M55,78 55,83 a17,17 0 1,0 34,0 a20,10 0 0,0 -20,-10"
                  />
                  <path
                    class="demo__num-path-2"
                    d="M69,73 l-35,0 l30,-30 a16,16 0 0,0 -22.6,-22.6 l-7,7"
                  />
                  <path
                    class="demo__num-join-2-3"
                    d="M28,69 Q25,44 34.4,27.4"
                  />
                  <path
                    class="demo__num-path-3"
                    d="M30,20 60,20 40,50 a18,15 0 1,1 -12,19"
                  />
                </defs>
                <path
                  class="demo__numbers-path"
                  d="M-10,20 60,20 40,50 a18,15 0 1,1 -12,19 
                         Q25,44 34.4,27.4
                         l7,-7 a16,16 0 0,1 22.6,22.6 l-30,30 l35,0 L69,73 
                         a20,10 0 0,1 20,10 a17,17 0 0,1 -34,0 L55,83 
                         l0,-61 L40,28"
                />
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
<!--End content -->

<script>
    function reject(objButton) {
        var url = objButton.value;
        // alert(objButton.value)
        Swal.fire({
            title: 'Are you sure?'
            , text: "You won't be able to revert this!"
            , icon: 'warning'
            , showCancelButton: true
            , confirmButtonColor: '#3085d6'
            , cancelButtonColor: '#d33'
            , confirmButtonText: 'Yes, Reject !'
        }).then((result) => {
            if (result.isConfirmed) {

                $.ajax({
                    method: 'POST'
                    , url: url
                    , headers: {
                        'X-CSRF-TOKEN': "{{ csrf_token() }}"
                    , }
                    , success: function(data) {
                        if (data.type == 'success') {
                            Swal.fire(
                                'Rejected !'
                                , 'This company has been Rejected. ' + data.message
                                , 'success'
                            )
                            setTimeout(function() {
                                location.reload();
                            }, 800); //
                        } else {
                            Swal.fire(
                                'Wrong !'
                                , 'Something going wrong. ' + data.message
                                , 'warning'
                            )
                        }
                    }
                , })
            }
        })
    }

</script>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<script>
    jQuery(function($) {
        $(document).ajaxSend(function() {
            $("#overlay").fadeIn(300);
        });

        $("#button").click(function() {
            $.ajax({
                type: "GET"
                , success: function(data) {
                    console.log(data);
                }
            }).done(function() {
                setTimeout(function() {
                    $("#overlay").fadeOut(300);
                }, 7000);
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
