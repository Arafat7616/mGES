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
                <th style="width: 100px">BRA Id</th>
                <th style="width: 750px">Name</th>
                <th>Vacancy</th>
            </tr>
            @foreach ($jobDistributeInBRAs as $jobDistributeInBRA)
                <tr>
                    <td data-th="Supplier Name">
                        {{ $jobDistributeInBRA->bra_id }}
                    </td>
                    <td data-th="Supplier Code">
                        {{ $jobDistributeInBRA->bra->name }}
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
