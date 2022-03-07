<link href="{{ asset('assets/review/main.css') }}" rel="stylesheet" type="text/css" />

<form action="{{ url('submit_review/'.$receiver_id) }}" method="POST">
    @csrf
<center>
        <fieldset class="rating" >
            <input id="demo-1" type="radio" name="rating" value="1" required>
            <label for="demo-1">1 star</label>
            <input id="demo-2" type="radio" name="rating" value="2">
            <label for="demo-2">2 stars</label>
            <input id="demo-3" type="radio" name="rating" value="3">
            <label for="demo-3">3 stars</label>
            <input id="demo-4" type="radio" name="rating" value="4">
            <label for="demo-4">4 stars</label>
            <input id="demo-5" type="radio" name="rating" value="5">
            <label for="demo-5">5 stars</label>
            <div class="stars">
            <label for="demo-1" aria-label="1 star" title="1 star"></label>
            <label for="demo-2" aria-label="2 stars" title="2 stars"></label>
            <label for="demo-3" aria-label="3 stars" title="3 stars"></label>
            <label for="demo-4" aria-label="4 stars" title="4 stars"></label>
            <label for="demo-5" aria-label="5 stars" title="5 stars"></label>
            </div>
        </fieldset>
</center>

<div class="modal-buttons">
    <div>
        <button class="btn2 btn-primary" id="submit">
            Submit
        </button>
        <button class="btn2 btn-white" data-dismiss="modal">Cancel</button>
    </div>
</div>

</form>
