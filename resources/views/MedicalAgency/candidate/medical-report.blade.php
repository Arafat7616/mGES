@extends("MedicalAgency.master")

@section('title', 'Update Candidates medical report')
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
                        <h4 class="pull-left page-title">Update Candidates medical report</h4>
                        <ol class="breadcrumb pull-right">
                            <li><a href="#">mGES</a></li>
                            <li><a href="#">One Stop Centre
                                </a></li>
                            <li class="active">Update Candidates medical report</li>
                        </ol>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">Update Candidates medical report</h3>
                        </div>
                        <div class="panel-body">
                            <form role="form" action="{{ route('MedicalAgency.candidate.add_medical_report', $candidate->id) }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf
                                @include('includes.errors')
                                <div class="row">
                                    <!-- Basic example -->
                                    <div class="col-sm-12 col-md-1 col-lg-1 col-xl-1"></div>
                                    <div class="col-sm-12 col-md-5 col-lg-5 col-xl-5">
                                        <div class="panel-body">
                                            <div class="form-group">
                                                <label for="candidateName">Candidate Name</label>
                                                <input readonly type="text" class="form-control" id="candidateName"
                                                    name="candidateName" value="{{ $candidate->candidate_name }}">
                                            </div>
                                            <div class="form-group">
                                                <label for="email">Email</label>
                                                <input readonly type="email" class="form-control" name="email" id="email"
                                                    value="{{ $candidate->candidate_email }}">
                                            </div>
                                            <div class="form-group">
                                                <label for="phoneNo">Phone Number</label>
                                                <input readonly type="text" class="form-control" name="phoneNo" id="phoneNo"
                                                    value="{{ $candidate->phone_number }}">
                                            </div>
                                            <div class="form-group">
                                                <label for="address">Address</label>
                                                <textarea readonly class="form-control" name="address" id="address" type="text"
                                                    cols="30" rows="2">{{ $candidate->permanent_address }}</textarea>
                                            </div>
                                        </div><!-- panel-body -->
                                    </div> <!-- col-->
                                    <!-- Horizontal form -->
                                    <div class="col-sm-12 col-md-5 col-lg-5 col-xl-5">
                                        <div class="panel-body">

                                            <div class="form-group">
                                                <label for="pre_medical_status">Post-Medical Status</label>
                                                <select class="form-control custom-select" name="pre_medical_status" required="">
                                                    <option selected="" disabled="" value="">Select candidate status</option>
                                                    <option @if($candidate->pre_medical_status == 1) @endif value="1">Medically fit (Pass)</option>
                                                    <option @if($candidate->pre_medical_status == 2) @endif value="2">Medically Unfit (Fail)</option>
                                                  </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="pre_medical_comments">Comments</label>
                                                <textarea id="pre_medical_comments" class="form-control" rows="4" name="pre_medical_comments"></textarea>
                                            </div>
                                        </div> <!-- panel-body -->
                                    </div> <!-- col -->
                                    <div class="col-sm-12 col-md-1 col-lg-1 col-xl-1"></div>
                                    <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
                                        <div class=" text-right">
                                            <button type="submit"
                                                class="btn btn-info waves-effect waves-ligh">Submit</button>
                                        </div>
                                    </div>

                                </div> <!-- End row -->
                            </form>
                        </div><!-- panel-body -->
                    </div>
                </div>
            </div> <!-- End Row -->
        </div> <!-- container -->
    </div>
    <!--End content -->
@endsection

@section('js')

@endsection
@section('DataTableJs')

@endsection
