@extends("WelfareCentre.master")

@section('title', 'Passport Renewal / Extension')
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
                        <h4 class="pull-left page-title">Passport Renewal / Extension</h4>
                        <ol class="breadcrumb pull-right">
                            <li><a href="#">mGES</a></li>
                            <li><a href="#">Passport Renewal / Extension</a></li>
                            <li class="active">Service details</li>
                        </ol>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="panel panel-warning">
                        <div class="panel-heading">
                            <h3 class="panel-title">Service details</h3>
                        </div>
                        <!-- /.panel-header -->
                        <div class="panel-body p-5">
                                <dl class="row">
                                    <dt class="col-sm-6">Name</dt>
                                    <dd class="col-sm-6">{{ $extensionPassportService->candidate->candidate_name }}</dd><br>
                                    <dt class="col-sm-6">CPR</dt>
                                    <dd class="col-sm-6">{{ $extensionPassportService->cpr }}</dd><br>
                                    <dt class="col-sm-6">Salary</dt>
                                    <dd class="col-sm-6">{{ $extensionPassportService->salary_type }}</dd><br>
                                    <dt class="col-sm-6">Message</dt>
                                    <dd class="col-sm-6">{{ $extensionPassportService->comments }}</dd><br>
                                    <dt class="col-sm-6">Application</dt>
                                    @if($extensionPassportService->extension_passport)
                                        <dd class="col-sm-6"><a href="{{ asset($extensionPassportService->extension_passport) }}" target="_blank" class="btn btn-outline-warning btn-xs"><b>View</b></a></dd><br>
                                    @else
                                        <dd class="col-sm-6"><a href="#" class="btn btn-outline-warning btn-xs"><b>View</b></a></dd><br>
                                    @endif
                                    <dt class="col-sm-6">Receipt</dt>
                                    <dd class="col-sm-6"><a href="#"
                                            class="btn btn-outline-warning btn-xs"><b>View</b></a>
                                    </dd><br>
                                </dl>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                </div>
                <div class="col-lg-6">
                    <form action="{{ route('WelfareCentre.extensionPassport.detailsUpdate', $extensionPassportService->id) }}" method="post"
                        enctype="multipart/form-data">
                        <div class="panel panel-primary">
                            <input type="hidden" value="{{ $extensionPassportService->id }}" name="id">
                            @csrf
                            <div class="panel-heading">
                                <h3 class="panel-title">Service status</h3>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="panel-body">
                                        <div class="form-group">
                                            <label for="passport">Passport</label>
                                            <input type="file" accept="application/pdf" class="form-control" name="passport" id="passport">
                                        </div>
                                        <div class="form-group">
                                            <label for="deliveryType">Delivery Type</label>
                                            <input class="form-control" value="{{ $extensionPassportService->delivery_type }}"
                                                type="text" name="deliveryType" id="deliveryType" readonly >
                                        </div>
                                        <div class="form-group row">
                                            <label for="deliveryTo" class="col-sm-4 col-form-label">Delivery to</label>
                                            <div class="col-sm-8">
                                                <input type="text" value="{{ $extensionPassportService->delivery_to }}"
                                                    class="form-control" id="deliveryTo" name="deliveryTo"
                                                    placeholder="Enter person or courier name">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="deliveryStatus" class="col-sm-4 col-form-label">Delivery status</label>
                                            <div class="col-sm-8">
                                                <select class="form-control" name="deliveryStatus" id="deliveryStatus"
                                                    required>
                                                    <option selected disabled value="">Select Delivery status</option>
                                                    <option value="Door delivery" @if ($extensionPassportService->delivery_type == 'Door delivery') selected @endif>Door delivery
                                                    </option>
                                                    <option value="Collect from WSC" @if ($extensionPassportService->delivery_type == 'Collect from WSC') selected @endif>Collect from WSC
                                                    </option>
                                                    <option value="Sent via courier" @if ($extensionPassportService->delivery_type == 'Sent via courier') selected @endif>Sent via courier
                                                    </option>
                                                    <option value="Sent via post" @if ($extensionPassportService->delivery_type == 'Sent via post') selected @endif>Sent via post
                                                    </option>
                                                    <option value="Hand delivered" @if ($extensionPassportService->delivery_type == 'Hand delivered') selected @endif>Hand delivered
                                                    </option>
                                                </select>
                                            </div>
                                        </div>
                                    </div><!-- panel-body -->
                                </div>
                            </div>
                            <div class="panel-footer text-right">
                                <button type="submit" name="btnupdate" class="btn btn-primary float-right">Submit</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div> <!-- container -->
    </div>
    <!--End content -->
@endsection

@section('DataTableJs')

@endsection
