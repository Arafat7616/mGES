@extends("MedicalAgency.master")

@section('main-content')
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<div class="content">

    <div class="container">
      <div class="row">
        <div class="col-md-4 ">
         <div class="leftScroll">
          <div class="card-img">
            <div class="all-img">
              <div class="img-cards">
                <img src="https://www.paisabazaar.com/wp-content/uploads/2018/08/SBI-EMV-Chip-1280x720.jpg" height="200px" width="350px" alt="">
              </div>
              <div class="img-cards ">
                <img src="https://www.paisabazaar.com/wp-content/uploads/2018/08/SBI-EMV-Chip-1280x720.jpg" height="200px" width="350px" alt="">
              </div>
              <div class="img-cards ">
                <img src="https://www.paisabazaar.com/wp-content/uploads/2018/08/SBI-EMV-Chip-1280x720.jpg" height="200px" width="350px" alt="">
              </div>
              <div class="img-cards ">
                <img src="https://www.paisabazaar.com/wp-content/uploads/2018/08/SBI-EMV-Chip-1280x720.jpg" height="200px" width="350px" alt="">
              </div>
            </div>
                  </div>


         </div>

         <div class="addIconbtn">
         <a href="#demo-modal2"> <span>+</span></a>
        </div>

        </div>
        <div class="col-md-8 ">
        <div class="row">
          <div class="col-md-6">
            <div class="custom_card_style">
            <div class="custom_content">
              <p>Total balance</p>
              <p><span class="bg-success upcontent">↑ 1230.20$</span></p>
              <p ><span class="bg-danger upcontent">↓ 1230.20$</span></p>
            </div>
            <div class="container moneyContent">
              <p>XXXX BDT</p>
            </div>

            <div class="button_contents" >
              <button class="btn btn-primary" style="margin-bottom: 10px">Deposit</button>
              <button class="btn btn-danger" style="margin-bottom: 10px">Spend</button>
            </div>
            </div>


          </div>
          <div class="col-md-6">
            <div class="custom_card_style">

<img src="https://miro.medium.com/max/1200/0*lAFT218Rf-h4-ej0.png" alt="" height="200px" width="500px">



            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 ">
          <div class="custom_card_style" style="padding: 20px">
            <h2>Transition History</h2>

            <table>
              <tr>
                <th>No</th>
                <th>ID</th>
                <th>Tranfer</th>
                <th>User</th>
                <th>Amount</th>
                <th>Data</th>
              </tr>
              <tr>
                <td>1</td>
                <td>2784237482743</td>
                <td>Purces</td>
                <td>Asif</td>
                <td>$100</td>
                <td>27-02-22</td>
              </tr>
              <tr>
                <td>1</td>
                <td>2784237482743</td>
                <td>Purces</td>
                <td>Asif</td>
                <td>$100</td>
                <td>27-02-22</td>
              </tr>
              <tr>
                <td>1</td>
                <td>2784237482743</td>
                <td>Purces</td>
                <td>Asif</td>
                <td>$100</td>
                <td>27-02-22</td>
              </tr>
              <tr>
                <td>1</td>
                <td>2784237482743</td>
                <td>Purces</td>
                <td>Asif</td>
                <td>$100</td>
                <td>27-02-22</td>
              </tr>
              <tr>
                <td>1</td>
                <td>2784237482743</td>
                <td>Purces</td>
                <td>Asif</td>
                <td>$100</td>
                <td>27-02-22</td>
              </tr>
              <tr>
                <td>1</td>
                <td>2784237482743</td>
                <td>Purces</td>
                <td>Asif</td>
                <td>$100</td>
                <td>27-02-22</td>
              </tr>
            </table>
          </div>

          </div>

        </div>


        </div>
      </div>
    </div>
    <div id="demo-modal2" class="modal">
      <div class="modal__content">
          <center>
              <h3 class="newCard">Add New Card</h3>

          </center>
          <form action="#">
              <div class="form-group">
                  <label for="text" class="labelText">Card number:</label>
                  <input type="text" class="form-control form_custom_style" id="email">
                </div>

               <div style="display: flex; justify-content:space-between">
                  <div class="form-group">
                      <label for="text" class="labelText">Expiry Date:</label>
                      <input type="date" class="form-control form_custom_style" id="date">
                    </div>
                    <div class="form-group">
                      <label for="text" class="labelText">Name</label>
                      <input type="text" class="form-control form_custom_style" id="email">
                    </div>
               </div>

               <div class="form-group">
                  <label for="text" class="labelText">Card number:</label>
                  <input type="text" class="form-control form_custom_style" id="email">
                </div>
                <div class="form-group">
                  <label><input type="checkbox"> Save card details</label>
                </div>

          </form>
          <footer class="modal_footer">
            <a type="button" href="#demo-modal3" class="footer_text_btn">Add Card</a>
          </footer>
          <a href="#" class="modal__close">&times;</a>
      </div>

  </div>



  <div id="demo-modal3" class="modal">
    <div class="modal__content">
        <center>
            <h1 class="newCard">Success</h1>
          <h3>Master card/ Debit card verfied!</h3>
        <span class="successMsg">  <i class="fa-solid fa-check" style="margin-top: 20px;margin-bottom: 20px"></i></span>
        </center>

        <a href="#" class="modal__close">&times;</a>
    </div>

</div>

</div>
<style>
  table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  /* border: 1px solid #dddddd; */
  text-align: left;
  padding: 8px;
}
.successMsg{

  background-color: #2A333C;
  color: #2AA9F4;
  padding: 20px;
  border-radius: 50%;
  font-size: 20px;
}
.form_custom_style{
        border-radius: 10px;
    }
    .labelText{
        color: white;
    }
    .newCard{
        color: white;
    }
    .modal_footer{
        /* background: black; */
       border-radius: 10px;
        text-align: center;
    }
    .footer_text_btn{
        background: #FFFFFF;
    padding: 8px 20px 8px 20px;
    border: none;
    outline: none;
    border-radius: 10px;
    font-size: 12px;
    color: black;
    margin: 10px;
    }
    .footer_text_btn:hover{
        background: #dae0e4;
    }
    .row-add{ margin: 10px; }
.card-add {
    height: 250px;
    width: 100%;
    background: #FFFFFF;
    box-shadow: 1px 1px 5px lightgrey;
    padding: 10px;
    box-shadow: 10px 5px 5px #ddd;
    border: none;
    border-radius: 8px;
    display: flex;
    justify-content: center;
    align-items: center;
}
.center-btn{
    background: #2BAAF5;
    padding: 15px 30px 15px 30px;
    border: none;
    outline: none;
    border-radius: 10px;
    font-size: 20px;
    color: white;
}
.plus-btn{
    background: white;
    color: #2BAAF5;
    padding: 0 5px 0 5px;
    font-weight: bold;
    border-radius: 50%;
}


  .button_contents{
    text-align: center;

  }
  .moneyContent{
    text-align: center;
    font-size: 50px;
  }
  .upcontent{
    padding: 5px;
    border-radius: 5px;
    color: white;
  }
  .custom_card_style{
    background-color: #FFFFFF;
    box-shadow: 5px 5px 15px lightgrey;
margin-top: 10px;
margin-bottom: 10px;
border-radius: 5px;

  }
  .custom_content{
    display: flex;
    justify-content: space-around

  }
  .custom_card_style p{
    color: black;
    padding: 10px;
  }

  /* .custom_card_style span{
  padding: 5px;
  border-radius: 5px;
  } */
  .addIconbtn{
    display: flex;
    justify-content: center;
    align-items: center;

  }
  .addIconbtn span{
    display: flex;
    justify-content: center;
    align-items: center;
    height: 50px;
    width: 50px;
    background: #FFFFFF;
    font-size: 25px;
    font-weight: bold;
    padding: 20px;
    border-radius: 50%;
    cursor: pointer;
    color: #2AA9F4;
    box-shadow: 5px 5px 15px lightgrey;
  }

  .leftScroll{
    height: 70vh;
    overflow-y: scroll;

  }
  .card-img{
    box-shadow: 1px 1px 5px lightgrey;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 10px;
    background-color: #FFFFFF;
  }
  .img-cards{
    margin-top: 10px;
    margin-bottom: 10px;
    cursor: pointer;
  }


  .modal {
  visibility: hidden;
  opacity: 0;
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  display: flex;
  align-items: center;
  justify-content: center;
  background: rgba(77, 77, 77, .7);
  transition: all .4s;
}

.modal:target {
  visibility: visible;
  opacity: 1;
}

.modal__content {
  border-radius: 4px;
  position: relative;
  width: 500px;
  max-width: 90%;
  background: #2BAAF5;
  padding: 1em 2em;
}

.modal__footer {
  text-align: right;
  a {
    color: #585858;
  }
  i {
    color: #d02d2c;
  }
}
.modal__close {
    font-size: 20px;
  position: absolute;
  top: 10px;
  right: 10px;
  color: #585858;
  text-decoration: none;
}

</style>
@endsection
