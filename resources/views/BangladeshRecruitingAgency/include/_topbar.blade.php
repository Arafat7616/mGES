<div class="topbar">
    <!-- LOGO -->
    <div class="topbar-left">
        <div class="text-center">
            <a href="{{ route('BangladeshRecruitingAgency.dashboard') }}" class="logo"><img
                    src="{{ asset('assets/images/mges.png') }}" height="40"></a>
            <a href="{{ route('BangladeshRecruitingAgency.dashboard') }}" class="logo-sm"><img
                    src="{{ asset('assets/images/mges.png') }}" height="30"></a>
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
                            <li class="user-header text-center ">
                                <img class="text-center" src="{{ asset(Auth::user()->logo ?? 'assets/images/users/avatar-1.jpg') }}"
                                    class="img-circle " alt="User Image">
                                <p>
                                    {{ Auth::user()->name }}
                                </p>
                                <center><small>{{ Auth::user()->email }}</small></center>
                                @if(Auth::user()->user_type == 'bangladesh-recruiting-agency')


                                @php
                                    $data = App\Review::where('receiver_id',Auth::user()->id);

                                    if($data->count() > 0)
                                    {
                                        $avg = $data->sum('ratings') / $data->count();
                                    }
                                    else {
                                        $avg = 0;
                                    }
                                @endphp

                                <center>
                                    <small>Ratings ({{ number_format($avg, 2) }})</small>
                                </center>

                                <center>
                                    <small>
                                        @for($i=0; $i< number_format($avg); $i++)
                                            <i class="fa fa-star" style="color: orange; font-size: 22px"></i>
                                        @endfor
                                    </small>

                                </center>

                                <div class="star-center">
                                    <span class="stars">{{ number_format($avg, 2) }}</span>
                                </div>




                                @endif

                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">

                                <div class="left">
                                    <a href="{{ route('BangladeshRecruitingAgency.companyPrfileView') }}">
                                        <img alt="user-img" src="{{ asset('assets/images/icon/Icon-profile.png') }}" /> Profile
                                    </a>
                                </div>

                                <div class="right">
                                    <a class="logout-btn" href="javascript:void(0);">
                                        <img alt="logout-img" src="{{ asset('assets/images/icon/Icon-logout.png') }}" /> Logout
                                    </a>
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
