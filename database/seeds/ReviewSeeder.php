<?php

use App\Review;
use Illuminate\Database\Seeder;

class ReviewSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Review::create([
            'receiver_id' => 5,
            'provider_id' => 1,
            'ratings' => 5
        ]);
        Review::create([
            'receiver_id' => 35,
            'provider_id' => 1,
            'ratings' => 2
        ]);
        Review::create([
            'receiver_id' => 28,
            'provider_id' => 1,
            'ratings' => 3
        ]);
        Review::create([
            'receiver_id' => 29,
            'provider_id' => 1,
            'ratings' => 5
        ]);
        Review::create([
            'receiver_id' => 30,
            'provider_id' => 1,
            'ratings' => 4
        ]);
        Review::create([
            'receiver_id' => 31,
            'provider_id' => 1,
            'ratings' => 3
        ]);
        Review::create([
            'receiver_id' => 32,
            'provider_id' => 1,
            'ratings' => 4
        ]);
        Review::create([
            'receiver_id' => 33,
            'provider_id' => 1,
            'ratings' => 5
        ]);
        Review::create([
            'receiver_id' => 34,
            'provider_id' => 1,
            'ratings' => 3
        ]);
        Review::create([
            'receiver_id' => 36,
            'provider_id' => 1,
            'ratings' => 4
        ]);
    }
}
