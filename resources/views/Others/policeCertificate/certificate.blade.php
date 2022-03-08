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
        <div class="header-content main-logo ">
            <span class="content-1">DEBHATA</span> <span class="content-title-1">Police Station.</span>

        </div>
        <div class="header-content main-logo">
            <span class="content-2">SATKHIRA</span> <span class="content-title-1">District.</span>

        </div>


        <section class="head-last-content">
            <div>
                <span class="content-title-1">No.</span> <span class="content-1">166</span>
            </div>

            <div> <span class="content-title-1">Dated</span> <span class="content-1">08-03-2022</span></div>

        </section>


        <section class="body-content ">
            <h3 class="main-logo body-title">
                POLICE CLEARANCE CERTIFICATE
            </h3>
            <p class="main-logo main-body-content-1">The character and antecedents of Mr/Mrs/Miss <span
                    class="content-1">MIZANUR RAHMAN </span> <br>
                son of/daugtherof/wife of <span class="content-1">MUHAMMED HAFIZ</span> <br>(address) <span
                    class="content-1">VILL. DEBHATA P.O DEBHATA DIST. SATKHIRA</span class="content-1"> holder
                <br> of
                Bangladesh International Passport no <span class="content-1">A008335445</span> issued at <br> <span
                    class="content-1">DHAKA</span>on <span class="content-1">08-03-22</span> have been <br>
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
                <span class="content-title-1">Seal.</span> <span>08-03-2022</span>
            </div>

            <div class="left-side-content">
                <div class=""><b>08-03-1997</b></div>
                <div class="">Office-in-charge</div>
                <div>
                    <span class="content-last">DEBHATA</span>
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
