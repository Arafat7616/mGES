<div class="left side-menu">
    <div class="sidebar-inner slimscrollleft">
        <!--- Divider -->
        <div id="sidebar-menu">
            <ul>
                <li>
                    <a href="{{ route('MalaysiaAdmin.dashboard') }}" class="waves-effect"><i class="ti-home"></i><span> Dashboard </span></a>
                </li>

                <li class="has_sub">
                    <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-tachometer"></i> <span>Employer Requests</span> <span class="pull-right"><i class="mdi mdi-plus"></i></span></a>
                    <ul class="list-unstyled">
                        <li><a href="{{ route('MalaysiaAdmin.employerRequest.new') }}"><i class="fa fa-arrow-circle-right"></i> New Requests</a></li>
                        <li><a href="{{ route('MalaysiaAdmin.employerRequest.approved') }}"><i class="fa fa-arrow-circle-right"></i> Approved Requests</a></li>
                        <li><a href="{{ route('MalaysiaAdmin.employerRequest.rejected') }}"><i class="fa fa-arrow-circle-right"></i> Rejected Requests</a></li>
                    </ul>
                </li>

                <li class="has_sub">
                    <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-building"></i></i> <span>
                            Employer Job Post Demand </span> <span class="pull-right"><i class="mdi mdi-plus"></i></span></a>
                    <ul class="list-unstyled">
                        <li><a href="{{ route('MalaysiaAdmin.employerDemand.new') }}"><i class="fa fa-arrow-circle-right"></i>New Job Post</a></li>
                        {{-- <li><a href="{{ route('MalaysiaAdmin.employerDemand.received') }}"><i class="fa fa-arrow-circle-right"></i>Received Demand</a></li> --}}
                        <li><a href="{{ route('MalaysiaAdmin.employerDemand.approved') }}"><i class="fa fa-arrow-circle-right"></i>Approved Demand</a></li>
                        <li><a href="{{ route('MalaysiaAdmin.employerDemand.rejected') }}"><i class="fa fa-arrow-circle-right"></i>Rejected Demand</a></li>
                    </ul>
                </li>

                <li class="has_sub">
                    <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-tachometer"></i> <span>Malaysia Recruiting Agency</span> <span class="pull-right"><i class="mdi mdi-plus"></i></span></a>
                    <ul class="list-unstyled">
                        <li><a href="{{ route('MalaysiaAdmin.mraRequest.new') }}"><i class="fa fa-arrow-circle-right"></i> New Requests</a></li>
                        <li><a href="{{ route('MalaysiaAdmin.mraRequest.approved') }}"><i class="fa fa-arrow-circle-right"></i> Approved Requests</a></li>
                        <li><a href="{{ route('MalaysiaAdmin.mraRequest.rejected') }}"><i class="fa fa-arrow-circle-right"></i> Rejected Requests</a></li>
                    </ul>
                </li>

                <li class="has_sub">
                    <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-tachometer"></i> <span> Malaysia Embassy</span> <span class="pull-right"><i class="mdi mdi-plus"></i></span></a>
                    <ul class="list-unstyled">
                        <li><a href="{{ route('MalaysiaAdmin.MalaysiaEmbassy.new') }}"><i class="fa fa-arrow-circle-right"></i> New Requests</a></li>
                        <li><a href="{{ route('MalaysiaAdmin.MalaysiaEmbassy.approved') }}"><i class="fa fa-arrow-circle-right"></i> Approved Requests</a></li>
                        <li><a href="{{ route('MalaysiaAdmin.MalaysiaEmbassy.rejected') }}"><i class="fa fa-arrow-circle-right"></i> Rejected Requests</a></li>
                    </ul>
                </li>

                <li class="has_sub">
                    <a href="javascript:void(0);" class="waves-effect"><i class="mdi mdi-adjust"></i> <span> Job Category</span> <span class="pull-right"><i class="mdi mdi-plus"></i></span></a>
                    <ul class="list-unstyled">
                        <li><a href="{{ route('MalaysiaAdmin.jobCategory.create') }}"><i class="fa fa-arrow-circle-right"></i> Add Job Category</a></li>
                        <li><a href="{{ route('MalaysiaAdmin.jobCategory.index') }}"><i class="fa fa-arrow-circle-right"></i> View Job Categories</a></li>
                    </ul>
                </li>

                <li class="has_sub">
                    <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-tachometer"></i> <span> Visa Process</span> <span class="pull-right"><i class="mdi mdi-plus"></i></span></a>
                    <ul class="list-unstyled">
                        <li><a href="{{ route('MalaysiaAdmin.visa.requested') }}"><i class="fa fa-arrow-circle-right"></i> Visa Requested</a></li>
                        <li><a href="{{ route('MalaysiaAdmin.visa.approved') }}"><i class="fa fa-arrow-circle-right"></i> Visa Approved</a></li>
                        <li><a href="{{ route('MalaysiaAdmin.visa.rejected') }}"><i class="fa fa-arrow-circle-right"></i> Visa Rejected</a></li>
                    </ul>
                </li>
                <li class="has_sub">
                    <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-tachometer"></i> <span> Candidates</span> <span class="pull-right"><i class="mdi mdi-plus"></i></span></a>
                    <ul class="list-unstyled">
                        <li><a href="{{ route('MalaysiaAdmin.candidate.travelReceived') }}"><i class="fa fa-arrow-circle-right"></i> Ready To Travel</a></li>
                    </ul>
                </li>

                <!--<li class="has_sub">-->
                <!--<a href="javascript:void(0);" class="waves-effect"><i class="ti-share"></i><span>Multi Menu </span><span class="pull-right"><i class="mdi mdi-plus"></i></span></a>-->
                <!--<ul>-->
                <!--<li class="has_sub">-->
                <!--<a href="javascript:void(0);" class="waves-effect"><span>Menu Item 1.1</span> <span class="pull-right"><i class="mdi mdi-plus"></i></span></a>-->
                <!--<ul style="">-->
                <!--<li><a href="javascript:void(0);"><span>Menu Item 2.1</span></a></li>-->
                <!--<li><a href="javascript:void(0);"><span>Menu Item 2.2</span></a></li>-->
                <!--</ul>-->
                <!--</li>-->
                <!--<li>-->
                <!--<a href="javascript:void(0);"><span>Menu Item 1.2</span></a>-->
                <!--</li>-->
                <!--</ul>-->
                <!--</li>-->
            </ul>
        </div>
        <div class="clearfix"></div>
    </div> <!-- end sidebarinner -->
</div>
