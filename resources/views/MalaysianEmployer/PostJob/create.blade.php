@extends("MalaysianEmployer.master")

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
                    <form class="form-horizontal" action="{{ route('MalaysianEmployer.postJob.store') }}" method="post"
                        enctype="multipart/form-data">
                        @csrf
                        @include('includes.errors')
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">Add New Job</h3>
                            </div>
                            <div class="panel-body">

                                <div class="row">
                                    <!-- Basic example -->
                                    <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                                        <div class="panel-body">
                                            <div class="form-group">
                                                <label for="User Name">User Name</label>
                                                <input type="text" class="form-control" id="UserName"
                                                    value="{{ Auth::user()->name }}" readonly="">
                                            </div>
                                            <div class="form-group">
                                                <label for="Company Name">Company Name</label>
                                                <input type="text" class="form-control" id="CompanyName"
                                                    value="{{ Auth::user()->company->company_name }}" readonly="">
                                            </div>
                                            <div class="form-group">
                                                <label for="jobCategory">Job Category</label>
                                                <select class="form-control" name="jobCategory" required="">
                                                    <option value="">Select job category</option>
                                                    @foreach ($job_categories as $cat)
                                                        <option {{ old('jobCategory') == $cat->id ? 'selected' : '' }}
                                                            value="{{ $cat->id }}">{{ $cat->category_name }}
                                                        </option>
                                                    @endforeach
                                                </select>
                                            </div>

                                            <div class="form-group">
                                                <label for="employmentType">Employment Type</label>
                                                <select class="form-control" name="employmentType" required="">
                                                    <option selected="" disabled="" value="">Select employment type</option>
                                                    <option {{ old('employmentType') == 'Full Time' ? 'selected' : '' }}
                                                        value="Full Time">Full Time</option>
                                                    <option {{ old('employmentType') == 'Part Time' ? 'selected' : '' }}
                                                        value="Part Time">Part Time</option>
                                                </select>
                                            </div>
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


                                            <div class="form-group">
                                                <label for="gender">Gender</label>
                                                <select class="form-control" name="gender" required="">
                                                    <option selected="" disabled="" value="">Select gender</option>
                                                    <option {{ old('gender') == 'Male only' ? 'selected' : '' }}
                                                        value="Male only">Male only</option>
                                                    <option {{ old('gender') == 'Female only' ? 'selected' : '' }}
                                                        value="Female only">Female only</option>
                                                    <option {{ old('gender') == 'Male and Female' ? 'selected' : '' }}
                                                        value="Male and Female">Male and Female</option>
                                                </select>
                                            </div>

                                        </div><!-- panel-body -->
                                    </div> <!-- col-->
                                    <!-- Horizontal form -->
                                    <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                                        <div class="panel-body">
                                            <div class="form-group">
                                                <label for="ageLimit">Age Limit</label>
                                                <select class="form-control" name="ageLimit" required="">
                                                    <option selected="" disabled="" value="">Select age limit</option>
                                                    <option {{ old('ageLimit') == 'Above 20' ? 'selected' : '' }}
                                                        value="Above 20">Above 20</option>
                                                    <option {{ old('ageLimit') == '20 - 30' ? 'selected' : '' }}
                                                        value="20 - 30">20 - 30</option>
                                                    <option {{ old('ageLimit') == '30 - 50' ? 'selected' : '' }}
                                                        value="30 - 50">30 - 50</option>
                                                    <option {{ old('ageLimit') == '30 - 80' ? 'selected' : '' }}
                                                        value="30 - 80">30 - 80</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="salary">Salary</label>
                                                <input type="text" class="form-control" id="salary" name="salary"
                                                    placeholder=" Enter Salary" value="{{ old('salary') }}">
                                            </div>
                                            <div class="form-group">
                                                <label for="jobLocation">Job Location</label>
                                                <input type="text" class="form-control" id="jobLocation"
                                                    name="jobLocation" placeholder="Enter Job Location"
                                                    value="{{ old('jobLocation') }}">
                                            </div>
                                            <div class="form-group">
                                                <label for="jobVacancy">Job Vacancy</label>
                                                <input type="text" value="{{ old('jobVacancy') }}" class="form-control"
                                                    id="jobVacancy" name="jobVacancy" placeholder="Enter Job Vacancy">
                                            </div>

                                            <div class="form-group">
                                                <label for="endDate">End Date</label>
                                                <input type="date" value="{{ old('endDate') }}" class="form-control"
                                                    id="endDate" name="endDate">
                                            </div>
                                            <div class="form-group">
                                                <label for="demandLetter">Demand Letter</label>
                                                <div class="input-group">
                                                    <div class="col-sm-4" style="padding-top:6px;">
                                                        <input type="file" accept="application/pdf" id="demandLetter"
                                                            name="demandLetter">
                                                    </div>
                                                </div>
                                            </div>
                                        </div> <!-- panel-body -->
                                    </div> <!-- col -->
                                </div> <!-- End row -->
                            </div><!-- panel-body -->
                        </div>
                        <div class="panel panel-secondary">
                            <div class="panel-heading">
                                <h3 class="panel-title">Make an appointment to verify new job post</h3>
                            </div>
                            <div class="panel-body">
                                <form role="form" method="POST" enctype="multipart/form-data"
                                    action="{{ route('MalaysianEmployer.companyPrfileSubmit') }}">
                                    @csrf
                                    <div class="row">
                                        <div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
                                            <div class="panel-body">
                                                <div class="form-group">
                                                    <label for="wsc">Select WSC</label>
                                                    <select class="form-control" name="wsc" required="" id="wsc">
                                                        <option value="">Select Centre</option>
                                                        @foreach ($welfares as $welfare)
                                                            <option @if (old('wsc') === $welfare->id) selected @endif
                                                                value="{{ $welfare->id }}">{{ $welfare->name }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div> <!-- panel-body -->
                                        </div> <!-- col -->
                                        <div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
                                            <div class="panel-body">
                                                <div class="form-group">
                                                    <label for="appointmentDate">Appointment Date</label>
                                                    <input type="date" value="{{ old('appointmentDate') }}"
                                                        class="form-control" id="appointmentDate" name="appointmentDate">
                                                </div>
                                            </div><!-- panel-body -->
                                        </div> <!-- col-->
                                        <div class="col-sm-12 col-md-4 col-lg-4 col-xl-4">
                                            <div class="panel-body">
                                                <div class="form-group">
                                                    <div class="form-group">
                                                        <label for="appointmentTime">Appointment Time</label>
                                                        <input type="time" value="{{ old('appointmentTime') }}"
                                                            class="form-control" id="appointmentTime"
                                                            name="appointmentTime">
                                                    </div>
                                                </div>
                                            </div> <!-- panel-body -->
                                        </div> <!-- col -->
                                    </div> <!-- End row -->
                            </div><!-- panel-body -->
                        </div>
                        <div class="panel">
                            <div class="panel-footer">
                                <div class=" text-right">
                                    <button type="submit" class="btn btn-dark waves-effect waves-ligh">Submit</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div> <!-- End Row -->
        </div>
    </div>
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

@endsection
