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


<div class="container">

    <table class="rwd-table">
        <tbody>
            <tr>
                <th style="width: 750px">Name</th>
                <th>Vacancy</th>
                <th>Vacancy</th>
            </tr>
            @foreach ($jobDistributeInBRAs as $jobDistributeInBRA)
                <tr>
                    <td data-th="Supplier Code">
                        {{ $jobDistributeInBRA->bra->name }}
                    </td>
                    <td data-th="Supplier Name">
                        {{ $jobDistributeInBRA->distributed_vacancy }}
                    </td>
                    <td data-th="Supplier Name">
                        {{ $jobDistributeInBRA->distributed_vacancy }}
                    </td>

                </tr>
            @endforeach
        </tbody>
    </table>

</div>
