<header class="sticky-top">
    <nav class="navbar  navbar-expand-lg navbar-light topHeading shadow-lg" style="z-index: 1">
        <div class="container">
            <a class="navbar-brand" href="{{ route('homePage') }}">
                <img src="{{ asset('assets/landingPageAsset/img/MGES-Logo-Orginal-Color.png') }}" alt=""
                    style="height: 60px" />
            </a>

            <div>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link topHeaderLink" href="{{ route('login') }}">LOGIN</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link topHeaderLink" href="{{ route('register') }}">SIGNUP</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link  topHeaderLink" href="{{ route('conatactPage') }}">CONTACT US</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- top header end -->

    <!-- second header start -->
    <div>
        <nav class="navbar  navbar-expand-lg navbar-light bg-white">
            <div class="container p-2">
                <div class="d-flex justify-content-end">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                </div>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="text-center navbar-nav mx-auto mb-2 mb-lg-0">
                        <li class="nav-item mx-3 {{ Request::routeIs('homePage') ? 'active' : '' }}">
                            <a class="nav-link" aria-current="page" href="{{ route('homePage') }}">Home</a>
                        </li>
                        <li class="nav-item mx-5 {{ Request::routeIs('aboutPage') ? 'active' : '' }}">
                            <a class="nav-link" href="{{ route('aboutPage') }}">About</a>
                        </li>
                        <li class="nav-item mx-5 dropdown {{ request()->is('mges/*') ? 'active' : '' }}">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                data-bs-toggle="dropdown" aria-expanded="false">
                                mGES
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li class="{{ Request::routeIs('mgesAbout') ? 'active-custom' : '' }}">
                                    <a class="dropdown-item" href="{{ route('mgesAbout') }}">About mGES</a>
                                </li>
                                <li class="{{ Request::routeIs('medicalCenter') ? 'active-custom' : '' }}">
                                    <a class="dropdown-item" href="{{ route('medicalCenter') }}">Medical Center</a>
                                </li>
                                <li>
                                    <hr class="dropdown-divider" />
                                </li>
                                <li class="{{ Request::routeIs('requirtmentAgency') ? 'active-custom' : '' }}">
                                    <a class="dropdown-item" href="{{ route('requirtmentAgency') }}">Recruitment
                                        Agencies</a>
                                </li>
                                <li class="{{ Request::routeIs('Insurance') ? 'active-custom' : '' }}">
                                    <a class="dropdown-item" href="{{ route('Insurance') }}">Insurance
                                        providers</a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item mx-5 {{ Request::routeIs('conatactPage') ? 'active' : '' }}">
                            <a class="nav-link" href="{{ route('conatactPage') }}" tabindex="-1">Contact</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

    </div>
</header>
