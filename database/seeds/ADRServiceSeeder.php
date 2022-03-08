<?php

use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Generator as Faker;

class ADRServiceSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(Faker $faker)
    {
        for ($i = 11; $i < 20; $i++) {
            DB::table('adr_services')->insert([
                'candidate_id' => rand(11, 19),
                'company_id' => 8,
                'wsc_id' => 6,
                'candidate_name' => $faker->name(),
                'company_name' => 'Demo Company',
                'service_type' => 'Demo Service',
                'comments' =>  'Demo Comments',
                'service_status' => 'Open',
                'created_id' => rand(11, 19),
                'created_at'  => Carbon::now(),
            ]);
        }
    }
}
