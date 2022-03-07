@extends('LandingPage.Layout.app')
@section('title')
    About
@endsection
@section('body')
    <!-- banner start -->
    <section id="banner">
        <div class="container-fluid banner-container-about">



            <div class="text-center">
                <div class='typeing'>
                    <h1>
                        <a href="" class="typewrite" data-period="2000" data-type='[ "ABOUT COMPANY" ]'>
                            <span class="wrap"></span>
                        </a>
                    </h1>
                </div>


                <img src="{{ asset('assets/landingPageAsset/img/MGES-Logo-Orginal-Color.png') }}" class="img-fluid"
                    height="300px" width="300px">
                <div class="banner-content mt-2">

                    <h2 class="text-light main-title mb-4">Migration Governance Eco system</h2>
                    <h5 class="text-light main-subtitle">A foreign employee recruitment </h5>
                    <h5 class="text-light main-subtitle">and management System</h5>
                    <div class="my-4">
                        <span class="mx-2"><i class="fa-brands fa-instagram banner-icons"></i></span>
                        <span class="mx-2"><i class="fa-brands fa-google-plus-g banner-icons"></i></span>
                        <span class="mx-2"><i class="fa-brands fa-facebook banner-icons"></i></span>
                        <span class="mx-2"><i class="fa-brands fa-twitter banner-icons"></i></span>
                    </div>
                    <div>
                        <button class="banner-btn">What's News</button>
                        <button class="banner-btn2 mx-3">More info</button>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- banner end -->

    <section id="content ">
        <div class="container wrapper">
            <div class="row">
                <div class="col-md-6 mb-3">
                    <img src="{{ asset('assets/landingPageAsset/img/about1st_image.jpg') }}" class="img-fluid"
                        alt="">
                </div>
                <div class="col-md-6 ">
                    <div class="w-75 mx-auto">
                        <h4 class="custome-primary">mGES</h4>
                        <h2 class="custome-primary-dark">The way to get started is to quit talking and begin doing!</h2>
                        <p class="p-text pt-5">Our company Migration Governance Eco-System is a 100% Bangladeshi-owned
                            company that is active in the field of information technology with numerous years of experience.
                            Apart from being a supplier of equipment to the government and the private sector, Migration
                            Governance Eco-System also has local expertise for the development of computer software with the
                            latest technology.
                            Our strategic business partner, Versatilo Group based in Bangladesh, is an organization with
                            many years of experience in the field of recruitment, training, and supply of Bangladeshi
                            workers to Malaysia.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>




    <section id="about2" style="background-color: #00add7 !important;">
        <div class="container wrapper">
            <div class="row">
                <div class="col-md-6">
                    <h2 class="text-white py-5">We are full of interesting creative ideas!</h2>
                </div>
                <div class="col-md-6">
                    <p class="text-white py-5">We’re proud to boast a strong team of IT engineers who thrive on rolling up
                        their sleeves and solving your IT problems and meeting your business needs.</p>
                </div>
            </div>
        </div>
    </section>





    <section id="about_three">
        <div class="container wrapper">
            <div class="row">
                <div class="col-md-4 text-center">
                    <h1>
                        Free consultation!
                    </h1>
                </div>
                <div class="col-md-4 text-center">
                    <h4>+973 35498599</h4>
                    <p>info@versatilo.london </p>
                </div>
                <div class="col-md-4 text-center">
                    <a href="" class="btn image-uploade-btn">Online Contact Form</a>
                </div>
            </div>
        </div>
    </section>


    <section id="card" style="background-color: #00add7 !important;">
        <div class="container wrapper">
            <div class="row">
                <div class="col-md-4 d-flex align-items-stretch">
                    <div class="card mb-2" style="background-color: #00add7 !important; border: 2px solid #6EBACC;">
                        <div class="card-body py-5">
                            <h4 class="text-center text-white py-5">Flexibility</h4>
                            <p class="text-center text-white content-text py-3">We are able to quickly adapt to new
                                circumstances as they arise and change our plans to navigate or overcome unanticipated
                                obstacles with a pin point solution-based strategy</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 d-flex align-items-stretch">
                    <div class="card mb-2">

                        <img class="img-fluid" src="{{ asset('assets/landingPageAsset/img/one.png') }}" alt="">

                    </div>
                </div>

                <div class="col-md-4 d-flex align-items-stretch">
                    <div class="card mb-2" style="background-color: #00add7 !important; border: 2px solid #6EBACC;">
                        <div class="card-body py-5">
                            <h4 class="text-center text-white">Strong Leaders</h4>
                            <p class="text-center text-white content-text">Our strong leadership encourage, motivate,
                                inspire and challenge our team to produce their best work and connects the team together for
                                better solutions.</p>
                        </div>
                    </div>
                </div>


                <div class="col-md-4 d-flex align-items-stretch">
                    <div class="card mb-2">

                        <img class="img-fluid" src="{{ asset('assets/landingPageAsset/img/two.jpg') }}" alt="">

                    </div>
                </div>

                <div class="col-md-4 d-flex align-items-stretch">
                    <div class="card mb-2" style="background-color: #00add7 !important; border: 2px solid #6EBACC;">
                        <div class="card-body py-5">
                            <h4 class="text-center text-white">Best Quality</h4>
                            <p class="text-center text-white content-text">We are committed to delivering outstanding,
                                cutting-edge IT solutions that add real value that goes beyond what is expected. Our
                                trustworthy, dedicated and experienced team will go the extra mile to solve your IT issues.
                            </p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 d-flex align-items-stretch">
                    <div class="card mb-2">

                        <img class="img-fluid" src="{{ asset('assets/landingPageAsset/img/three.jpg') }}" alt="">

                    </div>
                </div>
                <div class="col-md-4 d-flex align-items-stretch">
                    <div class="card mb-2" style="background-color: #00add7 !important; border: 2px solid #6EBACC;">
                        <div class="card-body py-5">
                            <h4 class="text-center text-white">Client Oriented</h4>
                            <p class="text-center text-white content-text">We strive to provide superior customer service
                                and ensure that every client is completely satisfied with our work. Our client-oriented
                                policy is what makes us top industry player.</p>
                        </div>
                    </div>
                </div>


                <div class="col-md-4 d-flex align-items-stretch">
                    <div class="card mb-2">

                        <img class="img-fluid" src="{{ asset('assets/landingPageAsset/img/four.jpeg') }}" alt="">

                    </div>
                </div>

                <div class="col-md-4 d-flex align-items-stretch">
                    <div class="card mb-2" style="background-color: #00add7 !important; border: 2px solid #6EBACC;">
                        <div class="card-body py-5">
                            <h4 class="text-center text-white content-text">Rich Experience</h4>
                            <p class="text-center text-white">With 25 years of experience, we are on a mission to exceed
                                your expectations and form a long-term, mutually beneficial relationship with ours clients.
                            </p>
                        </div>
                    </div>
                </div>
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

        <!-- card content start -->

        <!-- card content end -->
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
                this.txt = '';
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

                this.el.innerHTML = '<span class="wrap">' + this.txt + '</span>';

                var that = this;
                var delta = 200 - Math.random() * 100;

                if (this.isDeleting) {
                    delta /= 2;
                }

                if (!this.isDeleting && this.txt === fullTxt) {
                    delta = this.period;
                    this.isDeleting = true;
                } else if (this.isDeleting && this.txt === '') {
                    this.isDeleting = false;
                    this.loopNum++;
                    delta = 500;
                }

                setTimeout(function() {
                    that.tick();
                }, delta);
            };

            window.onload = function() {
                var elements = document.getElementsByClassName('typewrite');
                for (var i = 0; i < elements.length; i++) {
                    var toRotate = elements[i].getAttribute('data-type');
                    var period = elements[i].getAttribute('data-period');
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
    @endsection
