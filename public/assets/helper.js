$(document).ready(function() {
    $(".logout-btn").click(function() {
        Swal.fire({
            title: 'Are you sure?',
            text: "You can login again in this system!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, logout it!'
        }).then((result) => {
            if (result.value) {
                Swal.fire(
                    'Logout!',
                    'Successfully logout from this system.',
                    'success'
                )
                setTimeout(function() {
                    document.getElementById('logout-form').submit();
                }, 1000); //2 second
            }
        })
    });
});