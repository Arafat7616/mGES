@extends("MalaysiaEmbassy.master")
@section('main-content')
<div class="content">
    <div class="container">
        <!-- Page-Title -->
        <div class="row">
            <div class="col-sm-12">
                <div class="page-header-title">
                    <h4 class="pull-left page-title">Company Profile Edit</h4>
                    <ol class="breadcrumb pull-right">
                        <li><a href="#">mGES</a></li>
                        <li class="active">Company Profile Edit</li>
                        <li><a href="#">Dashboard</a></li>
                    </ol>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <form action="{{ route('MalaysiaEmbassy.updateProfile') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">Edit {{ $user->name }}'s information</h3>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label for="name">Name</label>
                                <input type="text" name="name" class="form-control" id="name" value="{{ $user->name }}">
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" name="email" readonly class="form-control" id="email" value="{{ $user->email }}">
                            </div>
                            <div class="form-group">
                                <label for="phone">Phone</label>
                                <input type="text" name="phone" readonly class="form-control" id="phone" value="{{ $user->phone }}">
                            </div>
                            <div class="form-group">
                                <img id="logoPreview" onchange="validateMultipleImage('logoPreview')" alt="logoPreview" src="" height="180px" width="180px" onerror="this.onerror=null;this.src='{{ asset($user->logo ?? get_static_option('no_image')) }}';" required/>
                            </div>
                            <div class="form-group">
                                <label for="logo">Logo</label>
                                <input type="file" class="mt-2" id="logo" name="logo" onchange="document.getElementById('logoPreview').src = window.URL.createObjectURL(this.files[0]); show(this)" accept=".jfif,.jpg,.jpeg,.png,.gif" >
                            </div>
                        </div>
                        <div class="panel-footer">
                            <div class=" text-right">
                                <button type="submit" class="btn btn-dark waves-effect waves-ligh">Submit</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div> <!-- End Row -->
    </div> <!-- container -->
</div> <!-- content -->
@endsection
@section('js')
    <script src="{{ asset('assets/pages/dashborad.js') }}"></script>
@endsection

