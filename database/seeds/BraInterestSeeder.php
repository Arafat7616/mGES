<?php

use App\BRAInterest;
use Illuminate\Database\Seeder;

class BraInterestSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        BRAInterest::create([
            'bra_id' => 28,
            'job_post_id' => 31,
            'status' =>  true
        ]);

        BRAInterest::create([
            'bra_id' => 35,
            'job_post_id' => 31,
            'status' =>  true
        ]);

        BRAInterest::create([
            'bra_id' => 28,
            'job_post_id' => 31,
            'status' =>  true
        ]);

        BRAInterest::create([
            'bra_id' => 29,
            'job_post_id' => 31,
            'status' =>  true
        ]);

        BRAInterest::create([
            'bra_id' => 30,
            'job_post_id' => 31,
            'status' =>  true
        ]);

        BRAInterest::create([
            'bra_id' => 31,
            'job_post_id' => 31,
            'status' =>  true
        ]);

        BRAInterest::create([
            'bra_id' => 32,
            'job_post_id' => 31,
            'status' =>  true
        ]);

        BRAInterest::create([
            'bra_id' => 33,
            'job_post_id' => 31,
            'status' =>  true
        ]);

        BRAInterest::create([
            'bra_id' => 34,
            'job_post_id' => 31,
            'status' =>  true
        ]);

        BRAInterest::create([
            'bra_id' => 36,
            'job_post_id' => 31,
            'status' =>  true
        ]);
    }
}
