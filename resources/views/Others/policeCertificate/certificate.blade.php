<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="{{ asset('assets/css/police_certificate.css') }}" />
    <title>Cirtificate</title>
</head>

<body>
    <!-- print button start  -->
    <input type="button" onclick="printDiv('printableArea')" value="Print" />
    <!-- print button end  -->


    <div class="cirtificate-div" id="printableArea">

        <div class="main-logo">
            <img src="{{ asset('assets/images/Government_Seal_of_Bangladesh.png') }}" class="logo-img"
                height="100px" width="100px" alt="">
        </div>

        <div class="main-title main-logo">
            <h4 class="head-title-top">GOVERNMENT OF THE PEOPLE'S REPUBLIC OF</h4>
            <h4 class="head-title-top">BANGLADESH</h4>
        </div>
        @php
            if ($candidate->candidate_name == "Imdadul Haque" ) {
                $police_station = 'Sirajgonj';
            }

            if ($candidate->candidate_name == "Monir Hossen" ) {
                $police_station = 'Tangail';
            }

            if ($candidate->candidate_name == "Arafat Hossin" ) {
                $police_station = 'Noakhali';
            }

            if ($candidate->candidate_name == "Apurbo Kumar Anup" ) {
                $police_station = 'Joypurhat';
            }

            if ($candidate->candidate_name == "Mizanual Rahman Raihan" ) {
                $police_station = 'Satkhira';
            }
        @endphp
        <div class="header-content main-logo ">
            <span class="content-1">{{ isset($police_station) ? $police_station : 'Dhaka' }}</span> <span class="content-title-1">Police Station.</span>

        </div>
        <div class="header-content main-logo">
            <span class="content-2">{{ isset($police_station) ? $police_station : 'Dhaka' }}</span> <span class="content-title-1">District.</span>

        </div>


        <section class="head-last-content">
            <div>
                <span class="content-title-1">No.</span> <span class="content-1">{{ $candidate->id }}</span>
            </div>

            <div> <span class="content-title-1">Date</span> <span class="content-1">{{ date('d-m-Y',strtotime($candidate->date)) }}</span></div>

        </section>


        <section class="body-content ">
            <h3 class="main-logo body-title">
                POLICE CLEARANCE CERTIFICATE
            </h3>
            <p class="main-logo main-body-content-1">The character and antecedents of Mr/Mrs/Miss <span
                    class="content-1">{{ $candidate->candidate_name }} </span> <br>
                son of/daugtherof/wife of <span class="content-1">{{ $candidate->father_name }}</span> <br>(address) <span
                    class="content-1">{{ $candidate->permanent_address }}</span class="content-1"> holder
                <br> of
                Bangladesh International Passport no <span class="content-1">A008335445</span> issued at <br> <span
                    class="content-1">DHAKA</span>on <span class="content-1">{{ date('d-m-Y',strtotime($candidate->created_at)) }}</span> have been <br>
                verified and
                there is no adverse information against him/her on <br> record.


            </p>
            <p class="main-logo main-body-content-1">
                This certificate is issued in pursuance of Ministry of Home Affairs <br> Memo.
                No. Nirdesh-2/75-Pt-2152-Bohi(1),dated the 19th May, 1977

            </p>

        </section>



        <section class="head-last-content">
            <div>
                <span class="content-title-1">Seal.</span> <span>{{ date('d-m-Y',strtotime($candidate->created_at)) }}</span>
            </div>

            <div class="left-side-content">
                <div class=""><b>{{ date('d-m-Y',strtotime($candidate->created_at)) }}</b></div>
                <div class="">Office-in-charge</div>
                <div>
                    <span class="content-last">{{ isset($police_station) ? $police_station : 'Dhaka' }}</span>
                    <i class="">Police Station</i>
                </div>

            </div>


        </section>

        <section>
            <p class="last-section">B.G.P-2008/2009-336Offset-10.000 Pad, 2008</p>
        </section>



    </div>

    <script src="./main.js"></script>
</body>

</html>
