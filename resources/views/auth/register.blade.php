<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
    <!-- <link rel="stylesheet" href="{{ asset('assets/landingPageAsset/css/login.css') }}" /> -->
    <link rel="stylesheet" href="{{ asset('assets/landingPageAsset/css/loginRegisterPage.css') }}" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
    <link rel="stylesheet" href="./asset/css/login.css" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/css/intlTelInput.css" />

    <script src={{ asset('assets/landingPageAsset/js/login') }}></script>
    <title>mGES SignUp</title>
</head>
<style>
    a:link {
        text-decoration: none;
    }

</style>

<body>
    <div class="bodyHeight">
        <div class="row loginBg">
            <div class="col-md-6 d-flex justify-content-center align-items-center my-2">
                <div class="p-4 bg-light bgShadow">
                    <form action="{{ route('register') }}" method="post">
                        @csrf
                        <div class="text-center">
                            <div class="d-flex justify-content-center">
                                <img src="assets/landingPageAsset/img/credintialImg/AllOutput/MGES-Logo-Orginal-Color.png"
                                    class="img-fluid my-3 mgesLogo" width="100px" alt="">
                            </div>

                            <h5 class="mt-4 fw-bolder">Registration From</h5>
                            <input type="text" name="name" class="form-control inputBorder my-4" placeholder="&#xf0e0; Name"
                                style="font-family: Arial, FontAwesome" id="" />
                            @error('name')
                                <p class="text-danger">{{ $message }}</p>
                            @enderror

                            <input type="email" name="email" class="form-control inputBorder my-4"
                                placeholder="&#xf0e0; Mail" style="font-family: Arial, FontAwesome" id="" />
                            @error('email')
                                <p class="text-danger">{{ $message }}</p>
                            @enderror

                            <input type="password" class="form-control inputBorder my-4" placeholder="&#xf023; Password"
                                style="font-family: Arial, FontAwesome" name="password" id="" />

                            @error('password')
                                <p class="text-danger">{{ $message }}</p>
                            @enderror


                            <input type="tel" id="phone" name="phone" class="form-control inputBorder my-4"
                                style="font-family: Arial, FontAwesome" />

                            @error('phone')
                                <p class="text-danger">{{ $message }}</p>
                            @enderror



                            <select class="form-select inputBorder my-4" name="role" required>
                                <option disabled value="" disabled selected>Select user type</option>
                                @foreach ($roles as $role)
                                    <option value="{{ $role->id }}">{{ $role->name }}</option>
                                @endforeach
                            </select>

                            @error('role')
                                <p class="text-danger">{{ $message }}</p>
                            @enderror


                            <div class="d-flex">
                                <input type="checkbox" class="mt-1 me-3" id="agreeTerms" name="terms" value="agree"
                                    required>
                                <label for="agreeTerms">
                                    I agree to the Teams
                                </label>
                                @error('terms')
                                    <br>
                                    <p class="text-danger">{{ $message }}</p>
                                @enderror
                            </div>
                            <button class="form-control signInButton my-4">Submit</button>

                            <p class="mt-5 pt-4">
                                <a href="{{ route('login') }}"><small>I am already registered</small><i
                                        class="fa-solid fa-right-long ms-2 mt-1"></i></a>
                            </p>

                        </div>
                    </form>
                </div>
            </div>
            <div class="col-md-6 rightSideContainerRegister">


            </div>
        </div>
    </div>



</body>

</html>


{{-- <form action="{{ route('register') }}" method="post" name="RegisterForm">
    @csrf
    <div class="input-group mb-3">
        <input type="text" class="form-control d-block" name="name" placeholder="Enter your Name" required>
        <div class="input-group-append">
            <div class="input-group-text">
                <span class="fas fa-user"></span>
            </div>
        </div>
    </div>
    @error('name')
        <div class="text-danger d-block">
            <p>{{ $message }}</p>
        </div>
    @enderror
    <div class="input-group mb-3">
        <input type="email" class="form-control d-block" name="email" placeholder="Enter your Email" required>
        <div class="input-group-append">
            <div class="input-group-text">
                <span class="fas fa-envelope"></span>
            </div>
        </div>
    </div>
    @error('email')
        <div class="text-danger d-block">
            <p>{{ $message }}</p>
        </div>
    @enderror
    <div class="input-group mb-3">
        <input type="password" class="form-control" name="password" placeholder="Enter your Password" required>
        <div class="input-group-append">
            <div class="input-group-text">
                <span class="fas fa-lock"></span>
            </div>
        </div>
    </div>
    @error('password')
        <div class="text-danger d-block">
            <p>{{ $message }}</p>
        </div>
    @enderror

    <div class="form-group">
        <select class="form-control" name="country">
            <option disabled value="">Select user country</option>
            @foreach ($countries as $country)
                <option value="{{ $country->id }}">{{ $country->country_name }}</option>
            @endforeach
        </select>
    </div>
    @error('country')
        <div class="text-danger d-block">
            <p>{{ $message }}</p>
        </div>
    @enderror
    <div class="form-group">
        <select class="form-control" name="role" required>
            <option disabled value="">Select user type</option>
            @foreach ($roles as $role)
                <option value="{{ $role->id }}">{{ $role->name }}</option>
            @endforeach
        </select>
    </div>
    @error('role')
        <div class="text-danger d-block">
            <p>{{ $message }}</p>
        </div>
    @enderror

    <div class="row">
        <div class="col-8">
            <div class="icheck-primary">
                <input type="checkbox" id="agreeTerms" name="terms" value="agree" required>
                <label for="agreeTerms">
                    I agree to the <a href="#">Terms</a>
                </label>
            </div>
        </div>

        @error('terms')
            <div class="text-danger d-block">
                <p>{{ $message }}</p>
            </div>
            <br>
        @enderror
        <!-- /.col -->
        <div class="col-4">
            <button type="submit" name="btnRegister" class="btn btn-primary btn-block">Register</button>
        </div>
        <!-- /.col -->
    </div>
</form>
<p class="mt-3 mb-1">
    <a href="{{ route('login') }}" class="text-center">I already have a membership</a>
</p> --}}


<script src="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/js/intlTelInput.min.js"></script>
<script>
    const phoneInputField = document.querySelector("#phone");
    const phoneInput = window.intlTelInput(phoneInputField, {
        utilsScript: "https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/js/utils.js",
    });
</script>
