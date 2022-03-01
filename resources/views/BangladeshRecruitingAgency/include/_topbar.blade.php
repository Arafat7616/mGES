<div class="topbar">
    <!-- LOGO -->
    <div class="topbar-left">
        <div class="text-center">
            <a href="{{ route('BangladeshRecruitingAgency.dashboard') }}" class="logo"><img
                    src="{{ asset('assets/images/mges.png') }}" height="28"></a>
            <a href="{{ route('BangladeshRecruitingAgency.dashboard') }}" class="logo-sm"><img
                    src="{{ asset('assets/images/logo_sm.png') }}" height="36"></a>
        </div>
    </div>
    <!-- Button mobile view to collapse sidebar menu -->
    <div class="navbar navbar-default" role="navigation">
        <div class="container">
            <div class="">
                <div class="pull-left">
                    <button type="button" class="button-menu-mobile open-left waves-effect waves-light">
                        <i class="ion-navicon"></i>
                    </button>
                    <span class="clearfix"></span>
                </div>
                <form class="navbar-form pull-left" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control search-bar" placeholder="Search...">
                    </div>
                    <button type="submit" class="btn btn-search"><i class="fa fa-search"></i></button>
                </form>

                <ul class="nav navbar-nav navbar-right pull-right">
                    <li class="dropdown hidden-xs" id="notification_body">
                        {{-- notification --}}
                    </li>
                    <li class="hidden-xs">
                        <a href="#" id="btn-fullscreen" class="waves-effect waves-light"><i
                                class="fa fa-crosshairs"></i></a>
                    </li>


                    <li class="nav-item dropdown user-menu">
                        <a href="" class="nav-link dropdown-toggle" data-toggle="dropdown">
                            <img src="{{ asset(Auth::user()->logo ?? 'assets/images/users/avatar-1.jpg') }}"
                                class="user-image img-circle " alt="User Image">
                            <span class="d-none d-md-inline"> {{ Auth::user()->name }}</span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                            <!-- User image -->
                            <li class="user-header ">
                                <img src="{{ asset(Auth::user()->logo ?? 'assets/images/users/avatar-1.jpg') }}"
                                    class="img-circle " alt="User Image">
                                <p>
                                    {{ Auth::user()->name }}
                                </p>
                                <center><small>{{ Auth::user()->email }}</small></center>
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="left">
                                    <a href="{{ route('BangladeshRecruitingAgency.companyPrfileView') }}">
                                        <img
                                            src="https://img.icons8.com/external-kiranshastry-lineal-color-kiranshastry/64/000000/external-user-management-kiranshastry-lineal-color-kiranshastry-10.png" />
                                    </a>
                                </div>
                                <div class="right">
                                    <div class="log">
                                        <a class="dropdown-item logout-btn" href="javascript:void(0);">
                                            <img src="https://img.icons8.com/fluency/48/000000/sign-in-form-password.png"
                                                alt="user-img" class="img-circle img-fluid text-center" />
                                        </a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>




                    {{-- <li class="dropdown" >
                        <a href="" class="dropdown-toggle profile waves-effect waves-light" data-toggle="dropdown" aria-expanded="true"><img src="{{asset('assets/images/users/avatar-1.jpg')}}" alt="user-img" class="img-circle"> </a>
                        <ul class="dropdown-menu" >
                            <li>
                                <img src="{{asset('assets/images/users/avatar-1.jpg')}}" alt="user-img" class="img-circle img-fluid" style="width: 150px;">
                            </li>

                            <li class="divider"></li>
                            @if (Auth::user()->active_status == 'Approved')
                            <li><a href="{{ route('BangladeshRecruitingAgency.companyPrfileView') }}"> Profile</a>
                            </li>
                            @endif

                            <li>
                                <a class="dropdown-item" href="{{ route('logout') }}"
                                   onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                    {{ __('Logout') }}
                                </a>
                                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                    @csrf
                                </form>
                            </li>
                        </ul>
                    </li> --}}

                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </div>
</div>
