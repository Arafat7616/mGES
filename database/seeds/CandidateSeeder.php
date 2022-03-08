<?php

use App\AppliedJob;
use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
use App\Candidate;
use App\OfferedCandidate;
use Faker\Generator as Faker;

class CandidateSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(Faker $faker)
    {
        for ($i = 0; $i < 10; $i++) {
            DB::table('candidates')->insert([
                'candidate_name' =>   'Mr. candidate ' . $i,
                'role_id' => 15,
                'job_id' => rand(1, 10),
                'company_id' =>$faker->numberBetween(1, 10),
                'job_category_id' => rand(1, 10),
                'candidate_dob' => '2021-30-07',
                'candidate_gender' => 'male',
                'passport_number' => Str::random(18),
                'phone_number' => '0185623055'.$i,
                'candidate_email' => 'candidate' . $i . '@gmail.com',
                'status' => 'Active',
                'offered_status' => true,
                // 'result_status' => 'New',
                'nationality' => 'bangladesh',
                'present_address' => 'dhaka bangladesh',
                'permanent_address' => 'bahrain',
                'created_id' => 3,
                'created_at' => Carbon::now(),
            ]);
        }

        for ($i = 11; $i < 20; $i++) {
            $appliedJob = AppliedJob::findOrFail(11);

            $candidate_id =  DB::table('candidates')->insertGetId([
                'candidate_name' =>   'Mr. candidate ' . $i,
                'role_id' => 15,
                'job_id' => $appliedJob->job_post_id,
                'company_id' => $faker->numberBetween(1, 10),
                'job_category_id' => $appliedJob->jobPost->job_category_id,
                'candidate_dob' => '2021-30-07',
                'candidate_gender' => 'male',
                'passport_number' => Str::random(18),
                'phone_number' => '018500305'.$i,
                'candidate_email' => 'candidate' . $i . '@gmail.com',
                'status' => 'Selected',
                'result_status' => 'Selected',
                'nationality' => 'bangladesh',
                'present_address' => 'dhaka bangladesh',
                'permanent_address' => 'bahrain',
                'created_id' => 3,
                'created_at' => Carbon::now(),
            ]);
            $candidate = Candidate::findOrFail($candidate_id);

            $offeredCandidate = new OfferedCandidate();
            $offeredCandidate->candidate_id = $candidate->id;
            $offeredCandidate->candidate_name = $candidate->candidate_name;
            $offeredCandidate->phone_number = $candidate->phone_number;
            $offeredCandidate->selected_osc_id = 11;
            // $offeredCandidate->post_biometric_id = 4;
            $offeredCandidate->candidate_email = $candidate->candidate_email;
            $offeredCandidate->travel_status = 'Ticket-Issued';
            $offeredCandidate->job_category_id = $candidate->job_category_id;
            $offeredCandidate->job_post_id = $candidate->job_id;
            // $offeredCandidate->result_status = ($i == 11 ? 'Post-Processing' : 'Selected');
            $offeredCandidate->result_status = 'Recommended';
            $offeredCandidate->post_medical_status = $i == 11 ? 'New' : null;
            $offeredCandidate->employer_comments = Str::random(10);
            $offeredCandidate->created_at = Carbon::now();
            $offeredCandidate->created_id = 8;
            $offeredCandidate->welfare_center_id = 6;
            $offeredCandidate->travel_agency_id = 3;
            $offeredCandidate->pre_medical_id = 12;
            $offeredCandidate->save();
        }


        for ($i=0; $i <800 ; $i++) {
            $candidate = new Candidate();
            $candidate->candidate_name      =  $faker->name();
            $candidate->role_id             = 15;
            $candidate->job_id              = $faker->numberBetween(1, 25);
            $candidate->company_id          = $faker->numberBetween(1, 10);
            $candidate->job_category_id     = rand(1, 13);
            $candidate->candidate_dob       = $faker->dateTimeBetween($startDate = '-40 years', $endDate = '-20 years', $timezone = null);
            $candidate->candidate_gender    = $faker->randomElements(['male', 'female'])[0];
            $candidate->passport_number     = Str::random(18);
            $candidate->phone_number        = $faker->phoneNumber();
            $candidate->candidate_email     = $faker->safeEmail;
            $candidate->status              = 'Active';
            $candidate->offered_status      = $faker->randomElements([true, false])[0];
            $candidate->result_status       = 'New';
            $candidate->nationality         = 'bangladesh';
            $candidate->present_address     = 'dhaka bangladesh';
            $candidate->permanent_address   = 'dhaka bangladesh';
            $candidate->created_id          = $faker->numberBetween(28,37);
            $candidate->permission_status   = $faker->numberBetween(1,2);
            $candidate->created_at          = Carbon::now();
            $candidate->sending_status      = $faker->numberBetween(1,2);
            $candidate->save();
        }
    }
}
