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
                        <a href="" class="typewrite" data-period="2000" data-type='[ "Insurance Providers!!!" ]'>
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
                <h3 class="">Insurance Providers</h3>
                <p class="text-muted">List of Accompanied Insurance Providers</p>
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
                        <th>Country</th>
                        <th>Region</th>
                        <th>Name</th>
                        <th>Address</th>
                    </tr>
                    <tr>
                        <td>Malaysia</td>
                        <td>Selangor</td>
                        <td>QBE Insurance Berhad</td>
                        <td>
                            <p>
                                No. 638, Level 6, Block B1, Leisure Commerce Square, No. 9,
                                Jln
                            </p>
                            <p>PJS 8/9, Pjs 8, 46150 Petaling Jaya, Selangor.</p>
                            <p>Phone: 03-7861 8400</p>
                            <p>Email: info@lifemedicalbd.com</p>
                        </td>
                    </tr>
                    <tr>
                        <td>Malaysia</td>
                        <td>Kuala Lumpur</td>
                        <td>Chubb Insurance Malaysia Berhad</td>
                        <td>
                            <p>
                                Wisma Chubb, 38, Jln Sultan Ismail, Bukit Bintang, 50250 Kuala
                            </p>
                            <p>Lumpur, Wilayah Persekutuan Kuala Lumpur.</p>
                            <p>Tel: 01737154982</p>
                            <p>Phone: 03-2058 3000</p>
                        </td>
                    </tr>
                    <tr>
                        <td>Malaysia</td>
                        <td>Kuala Lumpur</td>
                        <td>Allianz Malaysia Berhad</td>
                        <td>
                            <p>
                                W.P, No. 3-1,Jalan Prima 9, Pusat Niaga, Metro Prima, 52100
                            </p>
                            <p>Kuala Lumpur.</p>
                            <p>Tel: 01737154982</p>
                            <p>Phone: 013-388 4288</p>
                        </td>
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
@endsection
