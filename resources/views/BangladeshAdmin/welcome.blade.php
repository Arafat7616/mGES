@extends("BangladeshAdmin.master")
@section('main-content')
<div class="content">
    <div class="container">
        <!-- Page-Title -->
        <div class="row">
            <div class="col-sm-12">
                <div class="page-header-title">
                    <h4 class="pull-left page-title">Dashboard</h4>
                    <ol class="breadcrumb pull-right">
                        <li><a href="#">Excelanto</a></li>
                        <li class="active">Dashboard</li>
                    </ol>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6 col-lg-3">
                <div class="panel panel-primary text-center">
                    <div class="panel-heading">
                        <h4 class="panel-title">New Orders</h4>
                    </div>
                    <div class="panel-body">
                        <h3 class=""><b>256</b></h3>
                        <p class="text-muted"><b>48%</b> From Last 24 Hours</p>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-lg-3">
                <div class="panel panel-primary text-center">
                    <div class="panel-heading">
                        <h4 class="panel-title">Bounce Rate</h4>
                    </div>
                    <div class="panel-body">
                        <h3 class=""><b>36%</b></h3>
                        <p class="text-muted"><b>15%</b> Orders in Last 10 months</p>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-lg-3">
                <div class="panel panel-primary text-center">
                    <div class="panel-heading">
                        <h4 class="panel-title">User Registrations</h4>
                    </div>
                    <div class="panel-body">
                        <h3 class=""><b>254</b></h3>
                        <p class="text-muted"><b>65%</b> From Last 24 Hours</p>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-lg-3">
                <div class="panel panel-primary text-center">
                    <div class="panel-heading">
                        <h4 class="panel-title">Unique Visitors</h4>
                    </div>
                    <div class="panel-body">
                        <h3 class=""><b>34</b></h3>
                        <p class="text-muted"><b>31%</b> From Last 1 month</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-lg-6">
                <div class="panel panel-primary ">
                    <div class="panel-heading">
                        <h4 class="panel-title">Wallet</h4>
                    </div>

                    <div class="panel-body">
                        <p class="text-muted">Wallet Balance</p>
                        <h3 class=""><b>$ 10000.90</b></h3>
                    </div>

                    <div class="row justify-content-between">
                        <div class="panel-body">
                            <div class="col-sm-3 col-lg-6">
                                <p class="text-muted">Total Credit</p>
                                <h3 class=""><b>$ 250.55</b></h3>
                            </div>
                            <div class="col-sm-3 col-lg-6">
                                <p class="text-muted">Total Debit</p>
                                <h3 class=""><b>$ 188.00</b></h3>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <div class="col-sm-6 col-lg-6">
                <div class="panel panel-primary ">
                    <div class="panel-heading">
                        <h4 class="panel-title">Add Wallet</h4>
                    </div>

                    <div class="row">
                        <div class="panel-body">
                            <div class="tab">
                                <button class="tablinks TabLs" onclick="openCity(event, 'London')">Pocket Pay</button>
                                <button class="tablinks TabLs" onclick="openCity(event, 'Paris')">Credit Card</button>
                                <button class="tablinks TabLs" onclick="openCity(event, 'Tokyo')">Paypal</button>
                                <button class="tablinks TabLs" onclick="openCity(event, 'Netbank')">Net Bank</button>
                              </div>

                              <div id="London" class="tabcontent">
                                <p class="Paytext">Phone Number<input type="text" class="form-control" placeholder="Reciver Mobile Number"></p>
                                <p class="Paytext AmonutML">
                                    <input type="text" class="form-control AmonutM " placeholder="Amount">
                                    <input type="text" class="form-control AmonutM " placeholder="Note...">
                                </p>
                                <p><button class="btn btn-success">Submit</button></p>
                              </div>

                              <div id="Paris" class="tabcontent">
                                <p class="Paytext"><span>Card Owner</span><input type="text" class="form-control" placeholder="Card Owner Name"></p>
                                <p class="Paytext">Card Number<input type="text" class="form-control" placeholder="Valid Card Number"></p>
                                <p class="Paytext PaytextL">Expiration Date
                                    <p class="Paytext AmonutML">
                                        <input type="date" class="form-control AmonutM " placeholder="Amount">
                                        <input type="text" class="form-control AmonutM " placeholder="CVV ?">
                                    </p>
                                </p>
                                <div class="card-footer"><button type="button" class="btn btn-primary "> Confirm Payment </button></div>
                              </div>

                              <div id="Tokyo" class="tabcontent">
                                <p class="PaytextFast">Select your paypal account type</p>
                                    <div>
                                        <label> <input type="radio" name="optradio" checked class="Payradio"> Domestic </label>
                                        <label class="LabelRadio"> <input type="radio" name="optradio" class="Payradio">International</label>
                                    </div>

                                    <button type="button" class="btn btn-primary BtnPay">Log into my Paypal</button>
                                    <p class="PaytextLast "> Note: After clicking on the button, you will be directed to a secure gateway for payment.
                                        After completing the payment process, you will be redirected back to the website to view details of your order.
                                    </p>

                              </div>
                              <div id="Netbank" class="tabcontent">
                                <p class="PaytextFast">Select your Bank</p>
                                <div class="form-group ">
                                    <select class="form-control" id="ccmonth">
                                    <option value="" selected disabled>--Please select your Bank--</option>
                                    <option>Bank 1</option>
                                    <option>Bank 2</option>
                                    <option>Bank 3</option>
                                    <option>Bank 4</option>
                                    <option>Bank 5</option>
                                    <option>Bank 6</option>
                                    <option>Bank 7</option>
                                    <option>Bank 8</option>
                                    <option>Bank 9</option>
                                    <option>Bank 10</option>
                                </select> </div>
                            <div class="form-group">
                                <p> <button type="button" class="btn btn-primary "><i class="fas fa-mobile-alt mr-2"></i> Proceed Payment</button> </p>
                            </div>
                            <p class="text-muted">Note: After clicking on the button, you will be directed to a secure gateway for payment. After completing the payment process, you will be redirected back to the website to view details of your order. </p>

                              </div>

                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

<style>

    /* Style the tab */
    .tab {
      overflow: hidden;
    }

    /* Style the buttons inside the tab */
    .tab button {
      background-color: inherit;
      float: left;
      border: none;
      outline: none;
      cursor: pointer;
      padding: 10px;
      transition: 0.3s;
      font-size: 17px;
    }
    .TabLs{
        margin-right: 10px;
        margin-bottom: 10px;
        background-color: rgba(153, 153, 153, 0.39) !important;
    }

    /* Change background color of buttons on hover */
    .tab button:hover {
      background-color: rgb(173, 244, 253) !important;
    }

    /* Create an active/current tablink class */
    .tab button.active {
        background-color: #03a9f4 !important;
        color: white;
    }

    /* Style the tab content */
    .tabcontent {
      display: none;
      padding: 6px 12px;
      border-top: none;
    }

    .Paytext{
        color: rgb(87, 86, 86);
        font-size: 15px !important;
    }

    .AmonutML{
        display: flex;
        justify-content: space-between !important;
    }
    .AmonutM{
        width: 46%;
        display: inline;
        justify-content: space-between !important;
    }
    .PaytextL{
        display: flex;
        width: 50%;
    }
    .CreditD{
        width: 50%;
        display: flex;
    }
.Payradio{
    margin-right:  5px !important;
}

.LabelRadio{
    margin-left: 10px;
}

.PaytextFast{
    color: rgb(87, 86, 86);
    font-size: 15px ;
    margin-top: 10px;
    text-align: justify;
}
.BtnPay{
    margin-top: 15px;
}
.PaytextLast{
    color: rgb(87, 86, 86);
    font-size: 15px !important;
    margin-top: 15px;
    text-align: justify;
}


    </style>
<script>
    function openCity(evt, cityName) {
      var i, tabcontent, tablinks;
      tabcontent = document.getElementsByClassName("tabcontent");
      for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
      }
      tablinks = document.getElementsByClassName("tablinks");
      for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
      }
      document.getElementById(cityName).style.display = "block";
      evt.currentTarget.className += " active";
    }
    </script>
@endsection
