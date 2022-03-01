<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class NotificationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('notifications')->insert([
            'title' => 'New job post arrived ',
            'text' => 'Need 100 employe for versatile group ',
            'notification_for' => 'bangladesh-recruiting-agency',
            'notification_from' => 8,
            'created_by' => 2,
            'jobpost_id' => 1,
            // 'me_id' => 11,
            'staus' => 1
        ]);
    }
}
