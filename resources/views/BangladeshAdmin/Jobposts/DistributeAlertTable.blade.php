{{-- <table class="table">
    <tbody>
        <tr>
            <td style="font-weight: bold;">Name</td>
            <td style="font-weight: bold;">Vacancy</td>
        </tr>
        @foreach ($jobDistributeInBRAs as $jobDistributeInBRA)
            <tr>
                <td>{{ $jobDistributeInBRA->bra->name }}</td>
                <td>{{ $jobDistributeInBRA->distributed_vacancy }}</td>
            </tr>
        @endforeach
    </tbody>
</table> --}}


<div class="container p-5" style="background-color: rgba(0, 0, 0, 0.753); border-radius: 20px; ">
    <h3 style="margin-top: 30px; color:aliceblue">Distributed Agencies Are</h3>
    <table class="rwd-table" style="margin-top: 20px">
        <tbody>
            <tr>
                <th style="width: 100px">Id</th>
                <th style="width: 750px">Name</th>
                <th style="width: 300px">Rating</th>
                <th>Vacancy</th>
            </tr>
            @foreach ($jobDistributeInBRAs as $jobDistributeInBRA)
                <tr>
                    <td data-th="Supplier Name">
                        BRA{{ $jobDistributeInBRA->bra_id }}
                    </td>
                    <td data-th="Supplier Code">
                        {{ $jobDistributeInBRA->bra->name }}
                    </td>
                    <td>



                        @for ($i = 0; $i < $jobDistributeInBRA->bra->starRecurtingAgency->ratings; $i++)
                            <i class="fa fa-star" aria-hidden="true" style="color: #FFD700"></i>
                        @endfor
                        {{-- <i class="fa fa-star" aria-hidden="true" style="color: #FFD700"></i>
                        <i class="fa fa-star" aria-hidden="true" style="color: #FFD700"></i>
                        <i class="fa fa-star" aria-hidden="true" style="color: #FFD700"></i> --}}
                    </td>
                    <td data-th="Supplier Name">
                        {{ $jobDistributeInBRA->distributed_vacancy }}
                    </td>

                </tr>
            @endforeach
        </tbody>
    </table>

    <div class="float-right" style="margin: 20px 20px">
        <button class="btn btn-primary" id="close_custome_modal">close</button>
    </div>

</div>
