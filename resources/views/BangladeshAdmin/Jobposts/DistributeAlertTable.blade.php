<table class="table">
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
</table>
