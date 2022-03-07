<?php

use App\BRAInterest;
use Illuminate\Database\Seeder;

class BRAInterestSeeder1 extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        BRAInterest::insert([
            'bra_id' => 5,
            'job_post_id' => 31,
            'status' =>  true
        ]);

        BRAInterest::insert([
            'bra_id' => 18,
            'job_post_id' => 31,
            'status' =>  true
        ]);
    }
}
