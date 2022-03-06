<?php

use App\JobDistributeInBRA;
use Illuminate\Database\Seeder;

class JobDistributeInBRASeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        JobDistributeInBRA::insert([
            'job_post_id' => 31,
            'bra_id' => 5,
            'bra_interest_id' => 1,
            'distributed_vacancy' => 31
        ]);

        JobDistributeInBRA::insert([
            'job_post_id' => 31,
            'bra_id' => 18,
            'bra_interest_id' => 2,
            'distributed_vacancy' => 30
        ]);
    }
}
