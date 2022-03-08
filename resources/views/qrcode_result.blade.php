<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />

    <style>
        .custom_container{
    /* border: 1px solid #000; */
    background-color: rgb(246, 247, 248);
    width: 815px !important;
}

.sTitle{
    display: flex;
    justify-content: space-between !important;
}

.DateS{
    border: none;
    border-top: 1px solid #000;
}

.tdWidth{
    width: 250px !important;
    display: inline !important;
}
.Tablex{
    margin-top: -110px !important;
}

.Tabord{

    margin-left:100px;
    margin-top: 10px;

    margin-bottom: 10px;
}

.tabrow{
    width: 350px;
    border: 1px solid #000 !important;
    padding-left: 10px;
}

.TabColor{
    padding-left: 10px;
    padding-right: 10px;
    border: 1px solid #000 !important;
}
.foter{
    border-top: 1px solid #000;
    margin-top: 80px !important;
}

.foterb{
    border: none;
    font-size: 14px;
    text-align: justify;
}

.btextO{
    font-size: 12px !important;
}

.Tot{
    color: rgb(7, 78, 119);
}

    </style>
</head>

<body>
    <div class="container custom_container  ">
        <div class="row m-4  ">
            <i> <h2 class="Tot fw-bold mt-4 ">{{ $post->user->name }}</h2> </i>
            <small class="">
                <i> <b></b> Passion <span class="text-primary">to Create Valu through
                        <span class="text-danger">Difference</span></span></i>
            </small>

            <h1 class=""> <img src="{{ asset($post->user->logo ?? get_static_option('no_image')) }}" alt=""  height="50px" width="50px">{{ $post->user->name }} </h1>
            <span class="col-7 ">
                [Company No: {{ $post->user->id }}]
            </span>
            <span class="col-4 ">
                GST Reg No: {{ $post->user->company_register_number }}
            </span>

            <span class="">Batu 3 <span>3/4</span>,{{$post->user->address}}</span>

            <span class="col-3 ">Tel: {{ $post->user->phone }}</span>

            <span class="col-3 ">Fax: 07-4315333</span>
            <div class="DateS  text-end  ">Date: {{ date('d M,Y',strtotime($post->created_at)) }}</div>

            @if (isset($jobDistributedBra))
                @if ($jobDistributedBra->memp_status == 'Demand')
                    <p>To,</p>
                    <i> <b class="btext"> {{ $jobDistributedBra->bra->name }}</b> </i>
                    <i> <b class="btext">  {{ $jobDistributedBra->bra->address }}</b> </i>
                    <i> <b class="btext"> Licence no :  {{ $jobDistributedBra->bra->company_register_number }}</b> </i>
                    {{-- <i> <b class="btext"> G.P.O Box 8974, CPS 312, Samakhusi-26,</b> </i>
                    <i> <b class="btext"> Town Planning Near Swimming Pool,</b> </i> --}}
                    <i> <b class="btext"> {{ $jobDistributedBra->bra->address2 }}</b> </i>
                @endif
            @endif
            <p class="mt-3">Dear Sir/Madam,</p>
            <b>Re: DEMAND LETTER FOR RECRUITMENT OF WORKERS FROM {{ $post->user->country_name }}</b>
            <p>We hereby appoint your company to recruit Malaysia male workers for employment with our
                company and liaise with relevant authorities concerning recruitment.</p>
            <p>Our recruitment terms and conditions are as follows:</p>
            <div>
                <table class="Tablex">
                    <tr>
                        <td class="tdWidth">
                            <b>1. Number of workers</b>
                        </td>
                        <td>
                            : {{ $post->job_vacancy }} Persons ({{ $post->gender }})
                        </td>
                    </tr><br>
                    <tr>
                        <td class="tdWidth">
                            <b>2. Job Category</b>
                        </td>
                        <td>
                            : {{ $post->job_category_id ? $post->job_category->category_name : '' }}
                        </td>
                    </tr><br>
                    <tr>
                        <td class="tdWidth">
                            <b>3. Job Description</b>
                        </td>
                        <td>
                            : Production Operator
                        </td>
                    </tr><br>
                    <tr>
                        <td class="tdWidth">
                            <b>4. Age</b>
                        </td>
                        <td>
                            : ({{ $post->age_limit }})
                        </td>
                    </tr><br>
                    <tr>
                        <td class="tdWidth">
                            <b>5. Contract Period</b>
                        </td>
                        <td>
                            : 3 years
                        </td>
                    </tr><br>
                    <tr>
                        <td class="tdWidth">
                            <b>6. Basic Monthly Salary : </b>
                        </td>
                        <td>
                            RM {{ $post->salary }}
                        </td>
                        <div class="text-center">
                            <table class="Tabord">
                                <tr>
                                    <td class="tabrow">Allowance</td>
                                    <td class="TabColor">Amount in RM</td>
                                </tr>
                                <tr>
                                    <td class="tabrow">Night Shift Allowance</td>
                                    <td class="TabColor">RM-nil</td>
                                </tr>
                                <tr>
                                    <td class="tabrow">Estimated Overtime / Month</td>
                                    <td class="TabColor">422.00</td>
                                </tr>
                                <tr>
                                    <td class="tabrow">Total Gross Salary / month</td>
                                    <td class="TabColor">RM 1422.00</td>
                                </tr>
                            </table>
                        </div>
                    </tr><br>

                </table>
                <table>
                    <tr>
                        <td class="tdWidth">
                            <b>7. Working days</b>
                        </td>
                        <td>
                            : Monday to Saturday
                        </td>
                    </tr><br>
                    <tr>
                        <td class="tdWidth">
                            <b>8. Working hours</b>
                        </td>
                        <td>
                            8 hours per day 48 hours per week
                        </td>
                    </tr><br>
                </table>

                <div class="foter fw-bold mb-4">
                    <span class="foterb">
                        • Basic minimum salary should not be less than RM 34.62/day*8 hours 26 days-RM1000 for General
                        Workers and RM 38.46/day.
                    </span>
                </div>
            </div>
        </div>

    </div>
</body>

</html>
