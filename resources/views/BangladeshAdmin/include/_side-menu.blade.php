<div class="left side-menu">
    <div class="sidebar-inner slimscrollleft">
        <!--- Divider -->
        <div id="sidebar-menu">
            <ul>
                <li>
                    <a href="{{ route('BangladeshAdmin.dashboard') }}" class="waves-effect"><i
                            class="ti-home"></i><span> Dashboard </span></a>
                </li>
                <li class="has_sub">
                    <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-users"></i> <span>Bangladesh
                            RA</span> <span class="pull-right"><i class="mdi mdi-plus"></i></span></a>
                    <ul class="list-unstyled">
                        <li><a href="{{ route('BangladeshAdmin.bangladeshRecruitingAgency.request') }}"><i
                                    class="fa fa-arrow-circle-right"></i> New Requests</a></li>
                        <li><a href="{{ route('BangladeshAdmin.bangladeshRecruitingAgency.approved') }}"><i
                                    class="fa fa-arrow-circle-right"></i> Approved Requests</a></li>
                        <li><a href="{{ route('BangladeshAdmin.bangladeshRecruitingAgency.rejected') }}"><i
                                    class="fa fa-arrow-circle-right"></i> Rejected Requests</a></li>
                    </ul>
                </li>

                <li class="has_sub">
                    <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-users"></i> <span> One Stop
                            Service </span> <span class="pull-right"><i class="mdi mdi-plus"></i></span></a>
                    <ul class="list-unstyled">
                        <li><a href="{{ route('BangladeshAdmin.oneStopService.request') }}"><i
                                    class="fa fa-arrow-circle-right"></i> New Requests</a></li>
                        <li><a href="{{ route('BangladeshAdmin.oneStopService.approved') }}"><i
                                    class="fa fa-arrow-circle-right"></i> Approved Requests</a></li>
                        <li><a href="{{ route('BangladeshAdmin.oneStopService.rejected') }}"><i
                                    class="fa fa-arrow-circle-right"></i> Rejected Requests</a></li>
                    </ul>
                </li>

                <li class="has_sub">
                    <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-users"></i> <span>Malaysia
                            WSC</span> <span class="pull-right"><i class="mdi mdi-plus"></i></span></a>
                    <ul class="list-unstyled">
                        <li><a href="{{ route('BangladeshAdmin.welfareServiceCenter.request') }}"><i
                                    class="fa fa-arrow-circle-right"></i> New Requests</a></li>
                        <li><a href="{{ route('BangladeshAdmin.welfareServiceCenter.approved') }}"><i
                                    class="fa fa-arrow-circle-right"></i> Approved Requests</a></li>
                        <li><a href="{{ route('BangladeshAdmin.welfareServiceCenter.rejected') }}"><i
                                    class="fa fa-arrow-circle-right"></i> Rejected Requests</a></li>
                    </ul>
                </li>

                <li class="has_sub">

                    <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-users"></i> <span> Bangladesh High Commission  </span> <span class="pull-right"><i class="mdi mdi-plus"></i></span></a>
                    <ul class="list-unstyled">
                        <li><a href="{{ route('BangladeshAdmin.bangladeshHighCommission.request') }}"><i class="fa fa-arrow-circle-right"></i> New Requests</a></li>
                        <li><a href="{{ route('BangladeshAdmin.bangladeshHighCommission.approved') }}"><i class="fa fa-arrow-circle-right"></i> Approved Requests</a></li>
                        <li><a href="{{ route('BangladeshAdmin.bangladeshHighCommission.rejected') }}"><i class="fa fa-arrow-circle-right"></i> Rejected Requests</a></li>
                    </ul>
                </li>

                <li class="has_sub">
                    <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-phone"></i> <span>Call Center</span> <span class="pull-right"><i class="mdi mdi-plus"></i></span></a>
                    <ul class="list-unstyled">
                        <li><a href="{{ route('BangladeshAdmin.callCenter.request') }}"><i
                                    class="fa fa-arrow-circle-right"></i> New Requests</a></li>
                        <li><a href="{{ route('BangladeshAdmin.callCenter.approved') }}"><i
                                    class="fa fa-arrow-circle-right"></i> Approved Requests</a></li>
                        <li><a href="{{ route('BangladeshAdmin.callCenter.rejected') }}"><i
                                    class="fa fa-arrow-circle-right"></i> Rejected Requests</a></li>
                    </ul>
                </li>

                <li class="has_sub">
                    <a href="javascript:void(0);" class="waves-effect"><i class="ti-agenda"></i> <span> Job Posts
                        </span> <span class="pull-right"><i class="mdi mdi-plus"></i></span></a>
                    <ul class="list-unstyled">
                        <li><a href="{{ route('BangladeshAdmin.total_job_post.index') }}"><i
                                    class="fa fa-arrow-circle-right"></i> Total Job Posts</a></li>
                        <li><a href="{{ route('BangladeshAdmin.jobPost.braInterested') }}"><i
                                    class="fa fa-arrow-circle-right"></i> BRA interested job posts</a></li>
                        <li><a href="{{ route('BangladeshAdmin.vacancy_approval') }}"><i
                                    class="fa fa-arrow-circle-right"></i> Vacancy Approval</a></li>
                        <li><a href="{{ route('BangladeshAdmin.bhc_approval') }}"><i
                                    class="fa fa-arrow-circle-right"></i> BHC Approval</a></li>

                    </ul>
                </li>

                <li class="has_sub">
                    <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-user"></i> <span>
                            Candidates </span> <span class="pull-right"><i class="mdi mdi-plus"></i></span></a>
                    <ul class="list-unstyled">
                        <li><a href="{{ route('BangladeshAdmin.candidate.requests') }}"><i
                                    class="fa fa-arrow-circle-right"></i> Candidate Requests</a></li>
                        <li><a href="{{ route('BangladeshAdmin.candidate.forwarded') }}"><i
                                    class="fa fa-arrow-circle-right"></i> Forwarded Candidates</a></li>
                        <li><a href="{{ route('BangladeshAdmin.candidate.reviewed') }}"><i
                                    class="fa fa-arrow-circle-right"></i> Reviewed Candidates</a></li>
                        <li><a href="{{ route('BangladeshAdmin.candidate.finalized') }}"><i
                                    class="fa fa-arrow-circle-right"></i> Finalized Candidates</a></li>
                        <li><a href="{{ route('BangladeshAdmin.candidate.tickets_booked_List') }}"><i
                                    class="fa fa-arrow-circle-right"></i> Tickets Booked List</a></li>
                    </ul>
                </li>

                <li class="has_sub">
                    <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-tachometer"></i> <span> Visa
                            Process </span> <span class="pull-right"><i class="mdi mdi-plus"></i></span></a>
                    <ul class="list-unstyled">
                        <li><a href="{{ route('BangladeshAdmin.visaProcess.requests') }}"><i
                                    class="fa fa-arrow-circle-right"></i> Visa Requested</a></li>
                        <li><a href="{{ route('BangladeshAdmin.visaProcess.approved') }}"><i
                                    class="fa fa-arrow-circle-right"></i> Visa Approved</a></li>
                        <li><a href="{{ route('BangladeshAdmin.visaProcess.rejected') }}"><i
                                    class="fa fa-arrow-circle-right"></i> Visa Rejected</a></li>
                    </ul>

                </li>

                <li class="has_sub">
                    <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-money"></i> <span> E-Wallet</span> <span class="pull-right"><i class="mdi mdi-plus"></i></span></a>
                    <ul class="list-unstyled">
                        <li><a href="{{ route('BangladeshAdmin.eWallet.wallet_card') }}"><i class="fa fa-arrow-circle-right"></i> Wallet</a></li>
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
