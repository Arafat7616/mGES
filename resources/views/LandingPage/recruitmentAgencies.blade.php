@extends('LandingPage.Layout.app')
@section('title')
    Insurance
@endsection
@section('add-on-css')
    <link rel="stylesheet" href="{{ asset('assets/landingPageAsset/css/Requirtment-Agency.css') }}" />
@endsection
@section('body')
    <!-- banner start -->
    <section id="banner">
        <div class="container-fluid banner-container">
            <div class="text-center">
                <div class="typeing">
                    <h1>
                        <a href="" class="typewrite" data-period="2000" data-type='[ "Requirement Agency !!!" ]'>
                            <span class="wrap"></span>
                        </a>
                    </h1>
                </div>

                <img src="{{ asset('assets/landingPageAsset/img/MGES-Logo-Orginal-Color.png') }}" class="img-fluid"
                    height="300px" width="300px" />
                <div class="banner-content mt-2">
                    <h2 class="text-light main-title mb-4">
                        Migration Governance Eco system
                    </h2>
                    <h5 class="text-light main-subtitle">Migration with rights</h5>
                    <!-- <h5 class="text-light main-subtitle">A foreign employee recruitment </h5>
                                      <h5 class="text-light main-subtitle">and management System</h5> -->
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

    <!--
                          table content start -->

    <section id="table">
        <div class="container wrapper">
            <div class="card table-card p-3">
                <h3 class="">RECRUITMENT AGENCIES</h3>

                <div class="table-head d-flex justify-content-between">
                    <div>
                        Show
                        <select class="mx-2">
                            <option selected>10</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                        </select>
                        entries
                    </div>

                    <div class="search">
                        <div class="mb-3 row">
                            <label for="staticEmail" class="col-sm-3">Search</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="staticEmail" />
                            </div>
                        </div>
                    </div>
                </div>

                <table>
                    <tr>
                        <th>Name</th>
                        <th>Designation</th>
                        <th>Company Name</th>
                        <th>RL No.</th>
                    </tr>
                    <tr>
                        <td>Mohammad Abdul Mannan</td>
                        <td>Proprietor</td>
                        <td>Eastern Bay Bangladesh</td>
                        <td>162</td>
                    </tr>
                    <tr>
                        <td>Md. Gias Uddin</td>
                        <td>Chairman</td>
                        <td>Sarkar Recruiting Agency Ltd.</td>
                        <td>82</td>
                    </tr>

                    <tr>
                        <td>Mohammed Abul Basher</td>
                        <td>Managing Director</td>
                        <td>Golden Arrow Ltd.</td>
                        <td>19</td>
                    </tr>

                    <tr>
                        <td>Mostafizur Rahman</td>
                        <td>Managing Partner</td>
                        <td>Nac International</td>
                        <td>680</td>
                    </tr>

                    <tr>
                        <td>Abdur Rakib Muku</td>
                        <td>Proprietor</td>
                        <td>Tribeni International</td>
                        <td>186</td>
                    </tr>

                    <tr>
                        <td>Mohad. Saiful Noor</td>
                        <td>Managing Partner</td>
                        <td>Orchid View Ltd.</td>
                        <td>101</td>
                    </tr>

                    <tr>
                        <td>M.A. Sobhan Bhuiyan</td>
                        <td>Managing Director</td>
                        <td>Kazi International</td>
                        <td>103</td>
                    </tr>
                    <tr>
                        <td>Mohammad Obaidul Areef</td>
                        <td>Proprietor</td>
                        <td>Orbitals Enterprise</td>
                        <td>112</td>
                    </tr>

                    <tr>
                        <td>Kazi A.T.M. Anisur Rahman Bulbul</td>
                        <td>Managing Director</td>
                        <td>5M International Ltd.</td>
                        <td>389</td>
                    </tr>

                    <tr>
                        <td>Mrs. Kashmiri Kamal</td>
                        <td>Managing Director</td>
                        <td>Green Land Overseas</td>
                        <td>1080</td>
                    </tr>

                    <tr>
                        <td>Ali Haider Chowdhury</td>
                        <td>Director</td>
                        <td>A-Plus International</td>
                        <td>166</td>
                    </tr>

                    <tr>
                        <td>Mohammad Abdul Hye</td>
                        <td>Proprietor</td>
                        <td>Navira Ltd.</td>
                        <td>581</td>
                    </tr>

                    <tr>
                        <td>Shaikh Mohammad Shahidur Rahman</td>
                        <td>Managing Director</td>
                        <td>Akash Bhraman</td>
                        <td>181</td>
                    </tr>

                    <tr>
                        <td>Monsur Ahmed Kalam</td>
                        <td>Proprietor</td>
                        <td>Simplex International</td>
                        <td>101</td>
                    </tr>
                </table>

                <div class="table-footer my-2 d-flex justify-content-between">
                    <p>Showing 1 to 15 of 17 entries</p>
                    <div class="prevNext">
                        <span class="arrowBtn"><i class="fa-solid fa-arrow-left"></i>Previous</span>
                        <span class="arrowBtn mx-2">Next <i class="fa fa-arrow-right" aria-hidden="true"></i></span>
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

        <!--
                          table content end -->

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
