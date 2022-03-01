<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Static Template</title>
    <link rel="stylesheet" href="Style.css" />

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- SweetAlert2 -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.min.css"
    />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.all.min.js"></script>

    <style>
        @import url("https://fonts.googleapis.com/css2?family=Montserrat:wght@200;300;400&display=swap");
@import url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);
* {
  
  font-family: "Montserrat";
}
.join {
 
  margin: 10px 0;
}

.overlay {
  display: none;
  background: rgba(0, 0, 0, 0.4);
  height: 100%;
  width: 100%;
  position: fixed;
  top: 0;
  left: 0;
  z-index: 999;
}
.overlay .modal__locked {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 450px;
  height: 260px;
  background: white;
  border-radius: 20px;
}
.overlay .modal__locked .modal-body {
  position: absolute;
  top: 45%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 90%;
}
.overlay .modal__locked .modal-body center {
  margin: 20px;
}
.overlay .modal__locked .modal-body center strong {
  font-size: 25px;
  position: relative;
  top: -15px;
}

.overlay .modal__locked .modal-body center p {
  position: relative;
  top: -10px;
  font-size: 13px;
}

.overlay .modal__locked .modal-buttons {
  position: absolute;
  bottom: 30px;
  right: 10px;
}
.modal-buttons {
  width: 100%;
  text-align: center;
}
.btn {
  border: none;
  padding: 10px 15px;
  font-size: 16px;
  font-weight: 600;
  border-radius: 10px;
  width: 145px;
  height: 45px;
  box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.3);
  margin: 0 10px;
  color: rgba(0, 0, 0, 0.5);
}

.overlay .modal__locked .modal-buttons button.btn-purple {
  background: #2AA9F4;
  color: white;
}

/* Base setup */

h1 {
  font-size: 2em;
  margin-bottom: 0.5rem;
}
.rating-container {
  text-align: center;
  background-color: white;
  width: 300px;
  background: rgba(255, 255, 255, 0.25);
  box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
  backdrop-filter: blur(4px);
  -webkit-backdrop-filter: blur(4px);
  border-radius: 10px;
  border: 1px solid rgba(255, 255, 255, 0.18);
}
/* Ratings widget */
.rate {
  display: inline-block;
  border: 0;
}
/* Hide radio */
.rate > input {
  display: none;
}
/* Order correctly by floating highest to the right */
.rate > label {
  float: right;
}
/* The star of the show */
.rate {
  color: #6f6f6f;
}
.rate > label:before {
  display: inline-block;
  font-size: 2rem;
  padding: 0.3rem 0.2rem;
  margin: 0;
  cursor: pointer;
  font-family: FontAwesome;
  content: "\f005 ";
  /* color: green; */

  /* full star */
}

/* Half star trick */
.rate .half:before {
  content: "\f089 "; /* half star no outline */
  position: absolute;
  padding-right: 0;
}
/* Click + hover color */
input:checked ~ label, /* color current and previous stars on checked */
label:hover, label:hover ~ label {
  color: #f1c301;
} /* color previous stars on hover */

/* Hover highlights */
input:checked + label:hover, input:checked ~ label:hover, /* highlight current and previous stars */
input:checked ~ label:hover ~ label, /* highlight previous selected stars for new rating */
label:hover ~ input:checked ~ label /* highlight previous selected stars */ {
  color: rgb(194, 160, 11);
}

    </style>

    
  </head>
  <body>
    <div class="join">
      <button class="btn btn-join">
        Rate us 😁
      </button>
    </div>
    <div class="overlay">
      <div class="modal__locked">
        <div class="modal-body">
          <center>
            <strong>How did you like us?</strong>
            <p>
              If you like our page, would you mind taking a moment to rate it? It
              won't take more than a minute. Thanks for your support!😇
            </p>

            <fieldset class="rate">
              <input
                type="radio"
                id="rating10"
                name="rating"
                value="10"
              /><label for="rating10" title="5 stars"></label>
              <input type="radio" id="rating9" name="rating" value="9" /><label
                class="half"
                for="rating9"
                title="4 1/2 stars"
              ></label>
              <input type="radio" id="rating8" name="rating" value="8" /><label
                for="rating8"
                title="4 stars"
              ></label>
              <input type="radio" id="rating7" name="rating" value="7" /><label
                class="half"
                for="rating7"
                title="3 1/2 stars"
              ></label>
              <input type="radio" id="rating6" name="rating" value="6" /><label
                for="rating6"
                title="3 stars"
              ></label>
              <input type="radio" id="rating5" name="rating" value="5" /><label
                class="half"
                for="rating5"
                title="2 1/2 stars"
              ></label>
              <input type="radio" id="rating4" name="rating" value="4" /><label
                for="rating4"
                title="2 stars"
              ></label>
              <input type="radio" id="rating3" name="rating" value="3" /><label
                class="half"
                for="rating3"
                title="1 1/2 stars"
              ></label>
              <input type="radio" id="rating2" name="rating" value="2" /><label
                for="rating2"
                title="1 star"
              ></label>
              <input type="radio" id="rating1" name="rating" value="1" /><label
                class="half"
                for="rating1"
                title="1/2 star"
              ></label>
            </fieldset>
          </center>
        </div>
        <div class="modal-buttons">
          <div>
            <button class="btn btn-footer btn-white close">Cancel</button>
            <button class="btn btn-footer btn-purple close" id="submit">
              Submit
            </button>
          </div>
        </div>
      </div>
    </div>

    <script src="main.js"></script>
    <script>
      $(document).on("click", "#submit", function (e) {
        swal("Good job!", "You rated 4.5 Star", "success");

        modal.style.display = "none";
      });
    </script>

    <script>
        const button = document.querySelector(".btn-join");
const modal = document.querySelector(".overlay");
const close = document.querySelector(".close");
button.addEventListener("click", function () {
  modal.style.display = "block";
});
close.addEventListener("click", function () {
  modal.style.display = "none";
});

document.body.addEventListener("click", function (e) {
  if (e.target.classList[0] === "overlay") {
    modal.style.display = "none";
  }
});

    </script>
  </body>
</html>
