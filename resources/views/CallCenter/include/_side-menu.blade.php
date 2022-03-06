<div class="left side-menu">
    <div class="sidebar-inner slimscrollleft">
        <!--- Divider -->
        <div id="sidebar-menu">
            <ul>
                <li>
                    <a href="{{ route('CallCenter.dashboard') }}" class="waves-effect"><i class="ti-home"></i><span> Dashboard </span></a>
                </li>
                 <li class="has_sub">
                    <a href="javascript:void(0);" class="waves-effect"><i class="fa fa-building"></i></i> <span> Selected Candidates </span> <span class="pull-right"><i class="mdi mdi-plus"></i></span></a>
                    <ul class="list-unstyled">
                        <li><a href="{{ route('CallCenter.selectedFromDB') }}"><i class="fa fa-arrow-circle-right"></i> Selected From DB</a></li>
                        {{-- <li><a href="{{ route('CallCenter.selectedFromBra') }}"><i class="fa fa-arrow-circle-right"></i> Selected From BRA</a></li> --}}
                    </ul>
                </li>
            </ul>
        </div>
        <div class="clearfix"></div>
    </div> <!-- end sidebarinner -->
</div>
