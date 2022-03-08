@extends("BangladeshAdmin.master")

@section('main-content')
<div class="content">

    <div class="container">
        <div class="row-add">

            <div class="col-sm-12">
              <div class="card-add">


    <div >
        <a href="#demo-modal"> <button class="center-btn" >Add your card <span class="plus-btn">+</span></button></a>

   </div>


              </div>
            </div>
          </div>


    </div>



    <div id="demo-modal" class="modal">
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
              <a type="button" href="{{ route('BangladeshAdmin.eWallet.wallet_card') }}" class="footer_text_btn">Add Card</a>
            </footer>
            <a href="#" class="modal__close">&times;</a>
        </div>

    </div>


</div>
<style>
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
