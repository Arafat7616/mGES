@if (session()->has('success'))
    <script type="text/javascript">
        $(document).ready(function() {
            // notify('{{ session()->get('success') }}','success');
            Swal.fire({
                position: 'top-end',
                icon: 'success',
                title: '{{ Session::get('success') }}',
                showConfirmButton: false,
                timer: 1500
            })
        });
    </script>

@endif

@if (session()->has('danger'))
    <script type="text/javascript">
        $(document).ready(function() {
            Swal.fire({
                position: 'top-end',
                icon: danger,
                title: '{{ Session::get('danger') }}',
                showConfirmButton: false,
                timer: 1500
            })
        });
    </script>
@endif

@if (session()->has('loginValidationError'))
    <script type="text/javascript">
        $(document).ready(function() {
            Swal.fire({
                position: 'center',
                icon: 'error',
                title: '{{ Session::get('loginValidationError') }}',
                showConfirmButton: true,
                // timer: 1500
            })
        });
    </script>
@endif

@if ($errors->any())
    <script type="text/javascript">
        $(document).ready(function() {
            var errors = <?php echo json_encode($errors->all()); ?>;
          
            var errorMessage = '<div class="card bg-danger">\n' +
                '                        <div class="card-body text-center p-5">\n' +
                '                            <span class="text-white">';
            $.each(errors, function(key, value) {
                errorMessage += ('' + value + '<br>');
            });
            errorMessage += '</span>\n' +
                '                        </div>\n' +
                '                    </div>';
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                position: 'center',
                showConfirmButton: true,
                footer: errorMessage
            })
        });
    </script>
@endif
