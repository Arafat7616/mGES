@extends("OneStopService.master")

@section('title', 'Enquiry Detail')
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
                    <h4 class="pull-left page-title">Enquiry Detail</h4>
                    <ol class="breadcrumb pull-right">
                        <li><a href="#">mGES</a></li>
                        <li><a href="#">Posted Enquiries</a></li>
                        <li class="active">Enquiry Detail</li>
                    </ol>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <!-- Profile Image -->
                <div class="panel panel-primary card-outline">
                    <div class="panel-heading">
                        <h3 class="panel-title">Enquiry Detail</h3>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-12 col-md-12 col-lg-8 order-2 order-md-1">
                                <div class="row">
                                    <div class="col-12 col-sm-4 ">
                                        <div class="panel">
                                            <div class="panel-body user-card">
                                                <div class="media-main">
                                                    <div class="info">
                                                        <h4>Starting
                                                            point(From)</h4>
                                                        <p class="text-muted">{{  $travelEnquiry->start_point }}</p>
                                                    </div>
                                                </div>
                                            </div> <!-- panel-body -->
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-4 ">
                                        <div class="panel">
                                            <div class="panel-body user-card">
                                                <div class="media-main">
                                                    <div class="info">
                                                        <h4>End point(To)</h4>
                                                        <p class="text-muted">{{  $travelEnquiry->end_point }}</p>
                                                    </div>
                                                </div>
                                            </div> <!-- panel-body -->
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-4 ">
                                        <div class="panel">
                                            <div class="panel-body user-card">
                                                <div class="media-main">
                                                    <div class="info">
                                                        <h4>Total tickets required</h4>
                                                        <p class="text-muted">{{  $travelEnquiry->tickets_required }}</p>
                                                    </div>
                                                </div>
                                            </div> <!-- panel-body -->
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <h4>Comments</h4>
                                        <div class="post">
                                            <div class="user-block">
                                                @if ($user->logo)
                                                <img height="100px;" width="100px;" src="{{ asset($user->logo) }}"
                                                    class="profile-user-img img-fluid img-circle" alt="User Image" />
                                            @else
                                                <img class="profile-user-img img-fluid img-circle" height="70px;"
                                                    src="{{ asset('assets/images/users/avatar-1.jpg') }}" alt="User Image" />
                                            @endif
                                            <hr>
                                                <span class="username">
                                                    <a href="{{ route('OneStopService.company.showCompanyProfile', $user->id) }}">{{  $user->company_name }} ({{  $user->username }})</a>
                                                </span>
                                                <br>
                                                <span class="description">Posted on - {{  $travelEnquiry->created_date }}</span>
                                            </div>
                                            <!-- /.user-block -->
                                            <p>
                                                {{  $travelEnquiry->oss_comments }}
                                            </p>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-12 col-lg-4 order-1 order-md-2">
                                <h3 class="text-primary"><i class="fa fa-edit"></i> Note</h3>
                                <p class="text-muted">Travel agencies should submit their quotations(ticket cost for the
                                    journey of given total) before the enquiry end date.</p>
                                <br>
                                <div class="text-muted">
                                    <p class="text-sm">Date of journey
                                        <b class="d-block">{{  $travelEnquiry->date_of_journey }}</b>
                                    </p>
                                    <p class="text-sm">Enquiry end date
                                        <b class="d-block">{{  $travelEnquiry->end_date }}</b>
                                    </p>
                                </div>

                                <div class="text-center mt-5 mb-3">
                                    <a href="{{ route('OneStopService.travelEnquiry.postedTravel') }}" class="btn btn-sm btn-primary">Back</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>

            <!-- /.col -->
        </div>


        <div class="row">
            <div class="col-12">

                <div class="panel panel-primary card-outline">
                    <div class="panel-heading">
                        <h3 class="panel-title">Travel Agency Bidding</h3>
                    </div>
                    <div class="panel-body">
                        <table id="datatable-buttons" class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th>SL. No</th>
                                    <th>Agency Name</th>
                                    <th>Submitted Cost</th>
                                    <th>Action</th>
                                </tr>
                            </thead>

                            <tbody>
                                @foreach ($bidders as $key=>$bidder)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $bidder->travelAgency ? $bidder->travelAgency->company_name : '' }}</td>
                                    <td>{{ $bidder->submitted_cost }} </td>
                                    <td>
                                        <form role="form" method="POST" action="{{ route('OneStopService.travelEnquiry.select_agency') }}" enctype="multipart/form-data">
                                            @csrf
                                            <input type="hidden" name="enquiry_id" value="{{ $travelEnquiry->id }}"/>
                                            <input type="hidden" name="agency_id" value="{{ $bidder->id }}"/>

                                            @if($travelEnquiry->selected_agency_id == $bidder->id)
                                            <button class="badge badge-pill badge-danger  py-2">
                                                <i class="fa fa-select"></i> Selected
                                            </button>
                                            @else
                                            <button class="btn btn-info" type="submit">
                                                <i class="fa fa-select"></i> Select
                                            </button>
                                            @endif


                                        </form>
                                    </td>
                                </tr>
                                @endforeach



                                {{-- @foreach ($travelEnquiries as $travelEnquiry)
                                    <tr>
                                        <td>{{ $loop->iteration }}</td>
                                        <td>{{ $travelEnquiry->created_at }}</td>
                                        <td>{{ $travelEnquiry->start_point }}</td>
                                        <td>{{ $travelEnquiry->end_point }}</td>
                                        <td>{{ $travelEnquiry->tickets_required }}</td>
                                        <td>
                                            @if ($travelEnquiry->enquiry_status == 'New')
                                                <span class="project-state badge badge-info">New</span>
                                            @else
                                                <span class="label label-danger">Inactive</span>
                                            @endif
                                        </td>
                                        <td>
                                            <a class="btn btn-info btn-xs"
                                                href="{{ route('OneStopService.travelEnquiry.ShowPostedTravel', $travelEnquiry->id) }}">
                                                <i class="fa fa-eye"></i> View
                                            </a>
                                        </td>
                                    </tr>
                                @endforeach --}}
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th>SL. No</th>
                                    <th>Agency Name</th>
                                    <th>Submitted Cost</th>
                                    <th>Action</th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>

        </div>


    </div> <!-- container -->
</div>
<!--End content -->
@endsection

@section('DataTableJs')

@endsection
