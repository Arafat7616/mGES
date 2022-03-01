@extends("MalaysiaAdmin.master")

@section('title', 'Add Job Category')
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
                        <h4 class="pull-left page-title">Job Category</h4>
                        <ol class="breadcrumb pull-right">
                            <li><a href="#">mGES</a></li>
                            <li><a href="#">Job Category</a></li>
                            <li class="active">Add Job Category</li>
                        </ol>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">Add Job Category</h3>
                        </div>
                        <div class="panel-body">
                            <form action="{{ route('MalaysiaAdmin.jobCategory.store') }}" method="POST" role="form" enctype="multipart/form-data">
                                @csrf
                                @method('POST')
                                <div class="row ">
                                    <!-- Basic example -->
                                    <div class="col-md-2 col-lg-2 col-xl-2"> </div>
                                    <div class="col-sm-12 col-md-8 col-lg-8 col-xl-8">
                                        <div class="form-group">
                                            <label for="jobCategory">Job Category</label>
                                            <input type="text" class="form-control" id="jobCategory" name="jobCategory">
                                        </div>
                                        <div class="form-group">
                                            <label for="status">Status</label>
                                            <select class="form-control" name="status" id="status">
                                                <option disabled value="">Select Status</option>
                                                <option @if (old('status') == "Active") Selected @endif value="Active">Active</option>
                                                <option @if (old('status') == "Inactive") Selected @endif value="Inactive">Inactive</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-lg-2 col-xl-2"> </div>
                                    <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 text-center">
                                        <button type="submit" class="btn btn-dark waves-effect waves-ligh">Submit</button>
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

@section('DataTableJs')

@endsection
