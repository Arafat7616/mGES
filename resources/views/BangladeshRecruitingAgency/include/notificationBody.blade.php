<a href="#" data-target="#" class="dropdown-toggle waves-effect waves-light" data-toggle="dropdown" aria-expanded="true">
    <i class="fa fa-bell"></i> <span class="badge badge-xs badge-danger">{{ count($notifications) }}</span>
</a>
<ul class="dropdown-menu dropdown-menu-lg">

    <li class="text-center notifi-title">Notification <span
            class="badge badge-xs badge-success">{{ count($notifications) }}</span></li>
    <li class="list-group">
        <!-- list item-->
        @forelse ($notifications as $notification)
            <a href="{{ route('BangladeshRecruitingAgency.jobPost.jobDetails', $notification->job_post_id) }}"
                class="list-group-item">
                <div class="media">
                    <div class="media-heading">{{ $notification->title }}</div>
                    <p class="m-0">
                        <small>{!! $notification->text !!}</small>
                    </p>
                </div>
            </a>
        @empty
            <a href="javascript:void(0);" class="list-group-item">
                <div class="media">
                    <div class="media-heading">you have no notification yet !</div>
                    <p class="m-0">
                        <small> </small>
                    </p>
                </div>
            </a>
        @endforelse

    </li>


</ul>
