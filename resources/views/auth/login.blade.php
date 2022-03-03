<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
    <link rel="stylesheet" href="assets/landingPageAsset/css/login.css" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>
    <title>mGES Login</title>
</head>
<style>
    a:link {
        text-decoration: none !important;
    }

</style>

<body>
    <div class="bodyHeight">
        <div class="row">
            <div class="col-md-6 d-flex justify-content-center align-items-center my-2">
                <div class="p-4 bg-light bgShadow">

                    <form action="{{ route('login') }}" method="post">
                        @csrf
                        <div class="text-center">
                            <h5 class="my-4 fw-bolder">Member Login</h5>
                            <input type="email" name="email" value="{{ old('email') }}"
                                class="form-control inputBorder" placeholder="&#xf0e0; Mail"
                                style="font-family: Arial, FontAwesome" id="" />
                            @error('email')
                                <p class="text-danger">Credentials do not match our records !</p>
                            @enderror

                            <input type="password" class="form-control inputBorder mt-3" placeholder="&#xf023; Password"
                                style="font-family: Arial, FontAwesome" name="password" id="" />

                            <button class="form-control signInButton my-4">Sign In</button>
                            <p><small>Forget Username/Password</small></p>
                            <p class="mt-5 pt-4">
                                <a href="{{ route('register') }}"><small>Create your Account</small><i
                                        class="fa-solid fa-right-long"></i></a>
                            </p>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-md-6 rightSideContainer d-flex flex-column justify-content-evenly">
                <div class="d-flex justify-content-around">
                    <div></div>
                    <img class="img-fluid mGesWhite"
                        src="assets/landingPageAsset/img/credintialImg/AllOutput/MGES-Logo-White.png" width="250px"
                        alt="" />
                </div>
                <div class="d-flex justify-content-center">
                    <div class="d-flex justify-content-end airFlying p-3">
                        <img class="p-5 borderRadiusAirplane ms-5"
                            src="assets/landingPageAsset/img/credintialImg/airplane.gif" width="400px" alt="" />
                    </div>
                </div>
                <div></div>
            </div>
        </div>
    </div>
</body>

</html>
