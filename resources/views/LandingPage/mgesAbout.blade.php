@extends('LandingPage.Layout.app')
@section('title')
    About mGES
@endsection
@section('add-on-css')
    <link rel="stylesheet" href="{{ asset('assets/landingPageAsset/css/mGESabout.css') }}" />
    <link rel="stylesheet" href="{{ asset('assets/landingPageAsset/css/contact.css') }}" />
@endsection
@section('body')
    <div id="aboutMGES">
        <section>
            <div class="bgAboutImage d-flex justify-content-center align-items-center">
                <div class="text-center textTypeWrite mb-4">
                    <h1 class="text-light textTypeWrite mb-4">
                        <span class="txt-type" data-wait="3000" data-words='["About mGES"]'></span>
                    </h1>
                    <img class="mb-2 img-fluid"
                        src="{{ asset('assets/landingPageAsset/img/MGES-Web-Ui/All-Output/MGES-UI-All-Output/MGES-Logo-Orginal-Color.png') }}"
                        alt="" />
                    <h1 class="text-light fw-bolder mt-3">
                        A Foreign Employee Recruitment and <br />
                        Management System
                    </h1>
                </div>
            </div>
        </section>

        <!-- //TODO: mGES core areas -->

        <section class="my-5 coreAreaSection">
            <!-- <div class=""> -->
            <div class="row">
                <div class="col-md-6 d-flex justify-content-end leftSideAreas">
                    <img class="img-fluid"
                        src="{{ asset('assets/landingPageAsset/img/MGES-Web-Ui/All-Output/e-FWS-Intro.png') }}" alt="" />
                </div>
                <div class="col-md-6">
                    <h2 class="coreAreasHeader text-center text-light">
                        mGES core Areas
                    </h2>

                    <div>
                        <div></div>
                    </div>

                    <div class="d-flex justify-content-center align-items-center">
                        <div class="px-3 textGroup">
                            <p class="ms-5 my-5 ecoText">
                                A complete eco-system for foreign workers
                            </p>
                            <p class="text-muted ms-5 my-2 ecoText2">
                                There are over 4m foreign workers registered with
                                Immigration Malaysia. However, the demand is still very
                                stiff
                            </p>

                            <p class="text-muted ms-5 my-3 ecoText2">
                                e-MGES incorporates a complete eco-system ranging from the
                                creation of demand to the visa process in the host country,
                                receipt of workers in Malaysia and then push this
                                information through the intelligent systems for predictive
                                analytics to assist government and agencies for their policy
                                making information.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- </div> -->
        </section>

        <!-- //TODO: Used for section -->

        <section class="usedForBg">
            <div class="row pb-5">
                <div class="col-md-6 leftSideUsedFor">
                    <h2 class="usedForHeader text-center text-light">Used for</h2>
                    <div class="d-flex justify-content-end rowStyleUsedFor">
                        <div>
                            <p class="ms-4 my-5 ecoText">
                                A cloud based workforce management system, facilitating:
                            </p>

                            <div class="row px-3">
                                <div class="col-md-4">
                                    <div class="p-3 my-3 bg-light workPermit">
                                        <p class="text-center fw-bolder">Work Permits</p>
                                        <ul class="listStyleCountry">
                                            <li>
                                                <i class="fa-solid fa-circle-play text-primary pe-2"></i>Country name
                                            </li>
                                            <li>
                                                <i class="fa-solid fa-circle-play text-primary pe-2"></i>Country name
                                            </li>
                                            <li>
                                                <i class="fa-solid fa-circle-play text-primary pe-2"></i>Country name
                                            </li>
                                            <li>
                                                <i class="fa-solid fa-circle-play text-primary pe-2"></i>Country name
                                            </li>
                                            <li>
                                                <i class="fa-solid fa-circle-play text-primary pe-2"></i>Country name
                                            </li>
                                            <li>
                                                <i class="fa-solid fa-circle-play text-primary pe-2"></i>Country name
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="p-3 my-3 bg-light workPermit">
                                        <p class="text-center fw-bolder">Govt. Schemes</p>
                                        <ul class="listStyleCountry">
                                            <li>
                                                <i class="fa-solid fa-circle-play text-primary pe-2"></i>6p
                                            </li>
                                            <li>
                                                <i class="fa-solid fa-circle-play text-primary pe-2"></i>3p
                                            </li>
                                            <li>
                                                <i class="fa-solid fa-circle-play text-primary pe-2"></i>Etc.
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="p-3 my-3 bg-light workPermit">
                                        <p class="text-center fw-bolder">
                                            Professional & Vocational
                                        </p>
                                        <ul class="listStyleCountry">
                                            <li>
                                                <i class="fa-solid fa-circle-play text-primary pe-2"></i>Professional
                                                Permits
                                            </li>
                                            <li>
                                                <i class="fa-solid fa-circle-play text-primary pe-2"></i>Students
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 d-flex justify-content-center">
                    <img class="img-fluid my-4"
                        src="{{ asset('assets/landingPageAsset/img/MGES-Web-Ui/All-Output/Used-For.png') }}" alt="" />
                </div>
            </div>
        </section>

        <!-- //TODO: Used By -->
        <section class="my-4 rightSideUsedBy">
            <div class="row">
                <div class="col-md-6 d-flex justify-content-center">
                    <img class="img-fluid"
                        src="{{ asset('assets/landingPageAsset/img/MGES-Web-Ui/All-Output/Used-for-1.png') }}" alt="" />
                </div>
                <div class="col-md-6">
                    <h2 class="coreAreasHeader text-center text-light">Used By</h2>
                    <div class="d-flex justify-content-start">
                        <div>
                            <p class="ms-4 my-5 ecoText">
                                A cloud based workforce management system, facilitating:
                            </p>

                            <div class="row px-3">
                                <div class="col-md-4 my-3">
                                    <div class="p-3 bg-light workPermit">
                                        <p>Work Permits</p>
                                        <ul class="listStyleCountry">
                                            <li>
                                                <i class="fa-solid fa-circle-play text-primary pe-2"></i>Country name
                                            </li>
                                            <li>
                                                <i class="fa-solid fa-circle-play text-primary pe-2"></i>Country name
                                            </li>
                                            <li>
                                                <i class="fa-solid fa-circle-play text-primary pe-2"></i>Country name
                                            </li>
                                            <li>
                                                <i class="fa-solid fa-circle-play text-primary pe-2"></i>Country name
                                            </li>
                                            <li>
                                                <i class="fa-solid fa-circle-play text-primary pe-2"></i>Country name
                                            </li>
                                            <li>
                                                <i class="fa-solid fa-circle-play text-primary pe-2"></i>Country name
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-md-4 my-3">
                                    <div class="p-3 bg-light workPermit">
                                        <p>Govt. Schemes</p>
                                        <ul class="listStyleCountry">
                                            <li>
                                                <i class="fa-solid fa-circle-play text-primary pe-2"></i>6p
                                            </li>
                                            <li>
                                                <i class="fa-solid fa-circle-play text-primary pe-2"></i>3p
                                            </li>
                                            <li>
                                                <i class="fa-solid fa-circle-play text-primary pe-2"></i>Etc.
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-md-4 my-3">
                                    <div class="p-3 bg-light workPermit">
                                        <p>Professional & Vocational</p>
                                        <ul class="listStyleCountry">
                                            <li>
                                                <i class="fa-solid fa-circle-play text-primary pe-2"></i>Professional
                                                Permits
                                            </li>
                                            <li>
                                                <i class="fa-solid fa-circle-play text-primary pe-2"></i>Students
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- //TODO: Financial Inclusion -->
        <section class="usedForBg pb-5">
            <div class="row">
                <div class="col-md-6">
                    <h2 class="usedForHeader text-center text-light">
                        Financial Inclusion
                    </h2>
                </div>
            </div>

            <div class="container p-2">
                <p class="centralizedPay">
                    <big>mGES // Centralized Payments</big>
                </p>
                <p class="manualPayment">
                    <small>No manual payment is collected by agents at any page</small>
                </p>
                <div class="row">
                    <!-- <div class="col-md-2">
                                              <h1>This is Joti</h1>
                                            </div> -->
                    <div class="col-md-10 mx-auto">
                        <img class="img-fluid"
                            src="{{ asset('assets/landingPageAsset/img/MGES-Web-Ui/All-Output/Financial-Inclusion.png') }}"
                            alt="" />
                    </div>
                </div>
            </div>

            <!-- <div class="row mx-auto d-flex justify-content-center">
                                          <div class="col-md-12">
                                            <img
                                              class="img-fluid"
                                              src="{{ asset('assets/landingPageAsset/img/MGES-Web-Ui/All-Output/Financial-Inclusion.png') }}"
                                              alt=""
                                            />
                                          </div>
                                        </div> -->
        </section>

        <!-- //TODO: Smart Platform -->
        <section class="my-4">
            <div class="row">
                <div class="col-md-6 d-flex justify-content-end align-items-center">
                    <div class="p-3">
                        <div class="">
                            <p class="centralizedPay">
                                <big>mGES // Centralized Payments</big>
                            </p>
                            <p class="remitenceText">
                                <small>Remittance & Wages can be credited directly to e-Wallets
                                    thus reducing risk and pressure on conventional
                                    banking.</small>
                            </p>
                        </div>

                        <div>
                            <div class="d-flex my-4">

                                <img width="75px" class="img-fluid me-2"
                                    src="{{ asset('assets/landingPageAsset/img/MGES-Web-Ui/All-Output/Icon-13.png') }}"
                                    alt="" />

                                <div class="ms-1">
                                    <p><big>Secure Env</big></p>
                                    <p>
                                        <small>Latest cutting-edge technologies are embedded into
                                            these smart apps.</small>
                                    </p>
                                </div>
                            </div>
                            <div class="d-flex my-4">

                                <img class="img-fluild me-2" width="75px"
                                    src="{{ asset('assets/landingPageAsset/img/MGES-Web-Ui/All-Output/Icon-12.png') }}"
                                    alt="" />

                                <div class="ms-1">
                                    <p><big>Fast Utility</big></p>
                                    <p>
                                        <small>Use Salary for Savings, Pay Bills, Buy Tickets and
                                            off course shopping</small>
                                    </p>
                                </div>
                            </div>
                            <div class="d-flex my-4">

                                <img class="img-fluid me-2" width="75px"
                                    src="{{ asset('assets/landingPageAsset/img/MGES-Web-Ui/All-Output/Icon-13.png') }}"
                                    alt="" />

                                <div class="ms-1">
                                    <p><big>Global Remittance</big></p>
                                    <p>
                                        <small>Send money to the relatives back home in an
                                            instance</small>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div>
                        <h2 class="coreAreasHeader text-center text-light">Smart Platform</h2>
                        <div class="d-flex justify-content-center">
                            <img src="{{ asset('assets/landingPageAsset/img/MGES-Web-Ui/All-Output/Smart-platform.png') }}"
                                alt="" />
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!--- TODO: Un-parallel Security ---->
        <section class="about-page-primary-background pb-5">

            <div class="row">
                <div class="col-md-7">
                    <h3 class="about-title-left text-center">Unparallel Security</h3>
                    <div class="pt-4 text-center">
                        <h4>Facial Identification</h4>
                        <p>Use Facial Recognition to identify registered individual</p>
                    </div>

                    <div class="pt-3 text-center">
                        <img src="{{ asset('assets/landingPageAsset/img/camera.jpg') }}" class="img-fluid"
                            alt="" /><br />
                        <a href="" class="btn image-uploade-btn">Upload Picture</a>
                    </div>

                </div>

                <div class="col-md-5 d-flex justify-content-center align-items-center">
                    <div class="image-result mt-3">
                        <h4>Identification Results</h4>
                        <p>sarwar jahan shohan</p>
                        <br />
                        <p>XptdvTVW7NiCsmiS58Da</p>
                        <p>
                            Sucess : Person found with 100% confidence. ID :
                            bf0e2d06-956c-42b3-9732-bf6ca06b091b
                        </p>
                    </div>
                </div>
            </div>



        </section>

        <!-- @TODO: Multi Lingual --->
        <section class="multi-language">
            <div class="row">
                <div class="col-md-5"></div>
                <div class="col-md-7 text-center">
                    <h3 class="multi-language-title">Multi Lingual</h3>
                    <p class="pt-5">MGES – speaks your language</p>
                </div>
            </div>
            <div class="multi-language-image-container text-center">
                <img class="img-fluid m-3" src="{{ asset('assets/landingPageAsset/img/Multi-Lang.png') }}"
                    alt="image" />
            </div>
        </section>

        <!--- @TODO: Support---->
        <section class="support">
            <div class="container-fluid">
                <div class="row pb-5">
                    <div class="col-md-7 text-center">
                        <h3 class="support-title">Support</h3>
                        <div class="py-3">
                            <h5>MGES // Welfare & Support</h5>
                            <p>You are not alone!</p>
                        </div>
                        <img width="80%" src="{{ asset('assets/landingPageAsset/img/Artboard-53.png') }}"
                            class="img-fluid px-4 mx-3" alt="" />
                    </div>
                    <div class="col-md-5 d-flex justify-content-center align-items-center">
                        <div class="p-3">
                            <h2 class="text-center">19%</h2>
                            <p class="text-dark">
                                <big>
                                    Of foreign workers leave their jobs in an illegal way because
                                    they do not have someone better to advise them for.
                                </big>

                            </p>

                            <p class="text-dark">
                                <big>
                                    e-FWS Welfare & Support program would provide legal as-
                                    sistance and expert advice on the matters faced during work.
                                    This would not only mitigate any adverse situation but by
                                    having proper advice, workers would refrain from running away
                                    and working illegally in the country.
                                </big>

                            </p>
                        </div>

                    </div>
                </div>
            </div>
        </section>

        <!-- @TODO: Ask question -->
        <section class="question">
            <div class="container-fluid">
                <div class="row question py-5">
                    <div class="col-md-8 d-flex justify-content-center align-items-center">
                        <div class="text-center">

                            <img class="img-fluid anyQuestionImg"
                                src="{{ asset('assets/landingPageAsset/img/Questions.png') }}" alt="">
                            <div class="m-3">
                                <a href="#" class="btn question-button">Any Question?</a>
                            </div>

                            <p class="py-2">We love to talk <a href="#">Contact Us</a></p>

                        </div>

                    </div>
                    <div class="col-md-4">
                        <img src="{{ asset('assets/landingPageAsset/img/ques.png') }}" class="puestion-image"
                            alt="sas" />
                    </div>
                </div>
            </div>
        </section>
        <!-----question end -->


        <!-- Footer start -->
        <div class="Footer justify-content-center pt-4 pb-4  align-items-center text-light ">



            <div class="container FooterBot">
                <div class="row justify-content-between">
                    <div class="col-md-6 d-flex justify-content-between">
                        <p class="d-flex">MGES | www.mges.com</p>
                        <p class="d-flex text-end">2022 TFP Solution Bangladesh Ltd. &copy; All Right</p>
                    </div>
                    <div class="col-md-5 d-flex justify-content-between text-end">
                        <p class=" d-flex mx-2 FootBtn">Cookie Setting</p>
                        <p class=" d-flex mx-2 FootBtn">Guides</p>
                        <p class=" d-flex mx-2 FootBtn">Term of Use</p>
                        <p class=" d-flex mx-2 FootBtn">Privacy</p>
                    </div>
                </div>
            </div>

            <!-- Footer end -->
        </div>
    </div>

    <script>
        $(document).ready(function() {
            $(".nav-item").click(function() {
                $(this).addClass("active").siblings().removeClass("active");
            });
        });

        var TxtType = function(el, toRotate, period) {
            this.toRotate = toRotate;
            this.el = el;
            this.loopNum = 0;
            this.period = parseInt(period, 10) || 2000;
            this.txt = "";
            this.tick();
            this.isDeleting = false;
        };

        TxtType.prototype.tick = function() {
            var i = this.loopNum % this.toRotate.length;
            var fullTxt = this.toRotate[i];

            if (this.isDeleting) {
                this.txt = fullTxt.substring(0, this.txt.length - 1);
            } else {
                this.txt = fullTxt.substring(0, this.txt.length + 1);
            }

            this.el.innerHTML = '<span class="wrap">' + this.txt + "</span>";

            var that = this;
            var delta = 200 - Math.random() * 100;

            if (this.isDeleting) {
                delta /= 2;
            }

            if (!this.isDeleting && this.txt === fullTxt) {
                delta = this.period;
                this.isDeleting = true;
            } else if (this.isDeleting && this.txt === "") {
                this.isDeleting = false;
                this.loopNum++;
                delta = 500;
            }

            setTimeout(function() {
                that.tick();
            }, delta);
        };

        window.onload = function() {
            var elements = document.getElementsByClassName("typewrite");
            for (var i = 0; i < elements.length; i++) {
                var toRotate = elements[i].getAttribute("data-type");
                var period = elements[i].getAttribute("data-period");
                if (toRotate) {
                    new TxtType(elements[i], JSON.parse(toRotate), period);
                }
            }
            // INJECT CSS
            var css = document.createElement("style");
            css.type = "text/css";
            css.innerHTML = ".typewrite > .wrap { border-right: 0.08em solid #fff}";
            document.body.appendChild(css);
        };
    </script>
    <script src="{{ asset('assets/landingPageAsset/js/main.js') }}"></script>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous">
    </script>
    <script src="{{ asset('assets/landingPageAsset/js/contact.js') }}"></script>
@endsection
