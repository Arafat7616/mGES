@extends("OneStopService.master")

@section('title', 'Upload Face')
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
                        <h4 class="pull-left page-title">Upload Face</h4>
                        <ol class="breadcrumb pull-right">
                            <li><a href="#">mGES</a></li>
                            <li><a href="#">One Stop Centre
                                </a></li>
                            <li class="active">Upload Face</li>
                        </ol>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">Upload Face</h3>
                        </div>
                        <div class="panel-body">
                            <form role="form" action="{{ route('OneStopService.candidate.uploadFaceStore', $candidate->id) }}" method="POST"
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
                                        </div><!-- panel-body -->
                                    </div> <!-- col-->
                                    <!-- Horizontal form -->
                                    <div class="col-sm-12 col-md-5 col-lg-5 col-xl-5">
                                        <div class="panel-body">
                                            <div class="form-group">
                                                <label for="address">Address</label>
                                                <textarea readonly class="form-control" name="address" id="address" type="text"
                                                    cols="30" rows="2">{{ $candidate->permanent_address }}</textarea>
                                            </div>
                                            <div class="form-group">
                                                <img id="imagePreview" onchange="validateMultipleImage('imagePreview')" alt="imagePreview" src="" height="100px" width="100px" onerror="this.onerror=null;this.src='{{ asset($candidate->candidate_picture ?? get_static_option('no_image')) }}';" required/>
                                            </div>
                                            <div class="form-group">
                                                <label for="candidate_picture">Face (Picture of candidate)</label>
                                                <input type="file" class="mt-2" id="candidate_picture" name="candidate_picture" onchange="document.getElementById('imagePreview').src = window.URL.createObjectURL(this.files[0]); show(this)" accept=".jfif,.jpg,.jpeg,.png,.gif" >
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
