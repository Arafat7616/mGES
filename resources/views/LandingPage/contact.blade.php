@extends('LandingPage.Layout.app')
@section('add-on-css')
    <link rel="stylesheet" href="{{ asset('assets/landingPageAsset/css/mGESabout.css') }}" />
    <link rel="stylesheet" href="{{ asset('assets/landingPageAsset/css/contact.css') }}" />
@endsection
@section('body')
    <section>
        <div class="bgAboutImage d-flex justify-content-center align-items-center">
            <div class="text-center typeWrite">
                <h1 class="text-light textTypeWrite mb-4">
                    <span class="txt-type" data-wait="3000" data-words='["Contact Us"]'></span>
                </h1>

                <!-- <div class="typeing">
                  <h1>
                    <a
                      href=""
                      class="typewrite"
                      data-period="2000"
                      data-type='[ "INTRODUCING !!!" ]'
                    >
                      <span class="wrap"></span>
                    </a>
                  </h1>
                </div> -->
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

    <section class="contactSecondPart py-4">
        <div class="container">
            <div class="row">
                <div class="col-md-4 d-flex justify-content-center align-items-center">
                    <div class="d-flex justify-content-center align-items-center bgLight m-3 p-5">
                        <div class="text-center">
                            <img width="80px" src="{{ asset('assets/landingPageAsset/img/icons8-phone-ringing.gif') }}"
                                alt="" />
                            <p class="text-muted"><big>Call</big></p>
                            <h4 class="fw-bold">+973 35498599</h4>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 d-flex justify-content-center align-items-center">
                    <div class="d-flex justify-content-center align-items-center bgLight m-3 p-5">
                        <div class="text-center">
                            <img width="80px" src="{{ asset('assets/landingPageAsset/img/icons8-subscribe (1).gif') }}"
                                alt="" />
                            <p class="text-muted"><big>Mail</big></p>
                            <h4 class="fw-bold">info@versatilo.london</h4>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 d-flex justify-content-center align-items-center">
                    <div class="d-flex justify-content-center align-items-center bgLight m-3 p-5">
                        <div class="text-center">
                            <img width="80px" src="{{ asset('assets/landingPageAsset/img/icons8-location.gif') }}" alt="" />
                            <p class="text-muted"><big>Location</big></p>
                            <h4 class="fw-bold">
                                Al Hashmi Compound, Villa 15, gate 1200, Road 80, Block 426
                                budaiya highway Jidhafs, Kingdom
                            </h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="my-4 py-4">
        <div class="container">
            <div class="row">
                <div class="col-md-6"></div>
                <div class="col-md-1">
                    <div class="vl text-center"></div>
                </div>
                <div class="col-md-5"></div>
            </div>
        </div>
        <div class="text-center fw-bolder my-3">
            <h1 class="getInTouch">Get In Touch</h1>
        </div>
        <div class="text-center my-3">
            <h5 class="text-muted">We will get back to you ASAP</h5>
        </div>
        <div class="row">
            <div class="col-md-8 mx-auto">
                <form action="">
                    <input type="text" class="form-control my-4" placeholder="Name" />
                    <input type="email" class="form-control my-4" placeholder="Email" />
                    <input type="text" class="form-control my-4" placeholder="Company" />
                    <textarea class="form-control my-2" name="" id="" cols="30" rows="7" placeholder="Message*"></textarea>

                    <button class="btn btnSubmit my-2">Submit Now</button>
                </form>
            </div>
        </div>
    </section>

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

        <script src="{{ asset('assets/landingPageAsset/js/contact.js') }}"></script>
    @endsection
