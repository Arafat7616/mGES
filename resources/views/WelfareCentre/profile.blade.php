@extends("WelfareCentre.master")
@section('main-content')
    <div class="content">
        <div class="container">
            <!-- Page-Title -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="page-header-title">
                        <h4 class="pull-left page-title">Company Profile</h4>
                        <ol class="breadcrumb pull-right">
                            <li><a href="#">Excelanto</a></li>
                            <li class="active">Company Profile</li>
                            <li><a href="#">Dashboard</a></li>
                        </ol>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
             @if ($user->active_status == 'New')
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">Company Profile</h3>
                            </div>
                            <div class="panel-body">
                                <form role="form" method="POST" enctype="multipart/form-data"
                                    action="{{ route('WelfareCentre.companyPrfileSubmit') }}">
                                    @csrf
                                    <div class="row">
                                        <!-- Basic example -->
                                        <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                                            <div class="panel-body">
                                                <div class="form-group">
                                                    <label for="companyName">Company Name</label>
                                                    <input name="companyName" placeholder="Enter Company Name" type="text" class="form-control" id="companyName" value="{{ $user->company_name}}">
                                                </div>
                                                <div class="form-group">
                                                    <label for="abbreviation">Abbreviation</label>
                                                    <input name="abbreviation" placeholder="Enter Abbreviation" type="text"
                                                        class="form-control" id="abbreviation" value="{{ $user->abbr}}">
                                                </div>
                                                <div class="form-group">
                                                    <label for="companyRegisterNumber">Company Register Number</label>
                                                    <input name="companyRegisterNumber"
                                                        placeholder="Enter Company Register Number" type="text"
                                                        class="form-control" id="companyRegisterNumber" value="{{ $user->company_regno}}">
                                                </div>
                                                <div class="form-group">
                                                    <label for="domain">Domain</label>
                                                    <input name="domain" placeholder="Enter Domain" type="text"
                                                        class="form-control" id="domain" value="{{ $user->domain}}">
                                                </div>
                                                <div class="form-group">
                                                    <label for="phoneNumber">Phone Number</label>
                                                    <input name="phoneNumber" placeholder="Enter Phone Number" type="text"
                                                        class="form-control" id="phoneNumber" value="{{ $user->phone}}">
                                                </div>
                                                <div class="form-group">
                                                    <label for="city">City / Town</label>
                                                    <input name="city" placeholder="Enter City / Town" type="text"
                                                        class="form-control" id="city" value="{{ $user->city}}">
                                                </div>
                                                <div class="form-group">
                                                    <label for="state">State</label>
                                                    <input name="state" placeholder="Enter State" type="text"
                                                        class="form-control" id="state" value="{{ $user->state}}">
                                                </div>
                                            </div><!-- panel-body -->
                                        </div> <!-- col-->
                                        <!-- Horizontal form -->
                                        <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                                            <div class="panel-body">
                                                <div class="form-group">
                                                    <label for="address1">Address 1</label>
                                                    <textarea class="form-control" name="address1" id="address1" cols="30"
                                                        rows="3">{{ $user->address1}}</textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label for="address2">Address 2</label>
                                                    <textarea class="form-control" name="address2" id="address2" cols="30"
                                                        rows="3"> {{ $user->address2}} </textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label for="logo">Logo</label>
                                                    <input name="logo" type="file" accept="image/*" class="form-control" id="logo">
                                                </div>
                                                <div class="form-group">
                                                    <label for="document1">Document 1(Only PDF)</label>
                                                     <input name="document1"  type="file"  accept="application/pdf" class="form-control" id="document1">
                                                </div>
                                                <div class="form-group">
                                                    <label for="document2">Document 2(Only PDF)</label>
                                                    <input name="document2"  type="file"  accept="application/pdf" class="form-control" id="document2">
                                                </div>
                                            </div> <!-- panel-body -->
                                        </div> <!-- col -->
                                        <div class=" text-right">
                                            <button type="submit"
                                                class="btn btn-dark waves-effect waves-ligh">Submit</button>
                                        </div>
                                    </div> <!-- End row -->
                                </form>
                            </div><!-- panel-body -->
                        </div>
                    </div>
                </div> <!-- End Row -->
            @elseif ($user->active_status == "Pending")
                <section>
                    <div class="row">
                        <div class="col-md-4 text-right">
                            <h2 style="font-size:100px; font-weight: 90o;" class="text-warning"><i
                                    class="fa fa-warning text-warning"></i></h2>
                        </div>
                        <div class="col-md-8">
                            <h3>Please Wait! We will process your request.</h3>
                            <p>Your company profile needs verification. Wait until the company profile is approved.</p>
                        </div>
                    </div>
                </section>
            @elseif ($user->active_status == "Rejected")
                <section>
                    <div class="row">
                        <div class="col-md-4 text-right">
                            <h2 style="font-size:100px; font-weight: 90o;" class="text-danger"><i
                                    class="fa fa-warning text-danger"></i></h2>
                        </div>
                        <div class="col-md-8">
                            <h3>Oops! Your company profile has been rejected.</h3>
                            <p>Please check the details. You can <a href="#">Resubmit</a> your company profile or contact
                                us.</p>
                        </div>
                    </div>
                </section>
                @elseif ($user->active_status == "Approved")
                <div class="row">
                    <div class="col-md-6">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <h3 class="panel-title  text-white">{{ $user->name }}'s information</h3>
                            </div>
                            <div class="panel-body">
                                <div class="text-center">
                                    <img height="200px;" width="200px;" class="card-img profile-card-image"
                                        src="{{ asset($user->logo ?? get_static_option('no_image')) }}" alt="Card image cap">
                                    <h1 class="profile-name">{{ $user->name }} <a class="btn btn-success" href="{{ route('WelfareCentre.editProfile') }}"><i class="fa fa-edit"></i> Edit Profile </a></h1>
                                </div>
                                <div class="row">
                                    <ul class="list-group">
                                        <li class="list-group-item">
                                            <span class="badge badge-primary">{{ $user->email }}</span>
                                            Email
                                        </li>
                                        <li class="list-group-item">
                                            <span class="badge badge-info">{{ $user->phone }}</span>
                                        Phone
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="panel-footer">

                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <form action="{{ route('changePassword') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            @include('Others.message')
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h3 class="panel-title  text-white">Change Password</h3>
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                    <div class="container">
                                        <div class="col">
                                            <div class="form-group">
                                                <label for="oldPassword">Current Password</label>
                                                <input type="password" name="oldPassword" class="form-control" id="oldPassword">
                                            </div>
                                            <div class="form-group">
                                                <label for="password">New Password</label>
                                                <input type="password" name="password" class="form-control" id="password">
                                            </div>
                                            <div class="form-group">
                                                <label for="confirmPassword">Confirm Password</label>
                                                <input type="password" name="confirmPassword" class="form-control" id="confirmPassword">
                                            </div>
                                        </div>
                                    </div>
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
            @endif
        </div>
    </div>
@endsection
@section('js')
    <script src="{{ asset('assets/pages/dashborad.js') }}"></script>
@endsection

