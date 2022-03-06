<div class="left side-menu">
    <div class="sidebar-inner slimscrollleft">
        <!--- Divider -->
        <div id="sidebar-menu">
            <ul>
                <li>
                    <a href="{{ route('BangladeshRecruitingAgency.dashboard') }}" class="waves-effect"><i
                            class="ti-home"></i><span> Dashboard </span></a>
                </li>

                <li class="has_sub">
                    <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-tachometer"></i> <span> Job Posts
                        </span> <span class="pull-right"><i class="mdi mdi-plus"></i></span></a>
                    <ul class="list-unstyled">
                        <li><a href="{{ route('BangladeshRecruitingAgency.jobPost.all') }}"><i
                                    class="fa fa-arrow-circle-right"></i> All Job Posts</a></li>
                        <li><a href="{{ route('BangladeshRecruitingAgency.interestedJob.index') }}"><i
                                    class="fa fa-arrow-circle-right"></i> Interested Job</a></li>
                        <li><a href="{{ route('BangladeshRecruitingAgency.getDistributed.index') }}">
                            <i class="fa fa-arrow-circle-right"></i> Ba Requested Post</a></li>
                    </ul>
                </li>

                <li class="has_sub">
                    <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-tachometer"></i> <span>
                            Candidates</span> <span class="pull-right"><i class="mdi mdi-plus"></i></span></a>
                    <ul class="list-unstyled">
                        <li><a href="{{ route('BangladeshRecruitingAgency.candidate.new') }}"><i
                                    class="fa fa-arrow-circle-right"></i> New Candidates</a></li>
                        <li><a href="{{ route('BangladeshRecruitingAgency.candidate.all') }}"><i
                                    class="fa fa-arrow-circle-right"></i> All Candidates</a></li>
                        <li><a href="{{ route('BangladeshRecruitingAgency.candidate.selected') }}"><i
                                    class="fa fa-arrow-circle-right"></i> Selected Candidates</a></li>
                       
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
