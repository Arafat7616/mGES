<?php

use App\JobCategory;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class JobCategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Jobcategory::create([
            'category_name' => 'Plumber',
            'status' => 'Active'
        ]);

        Jobcategory::create([
            'category_name' => 'Painter',
            'status' => 'Active'
        ]);

        Jobcategory::create([
            'category_name' => 'Driver',
            'status' => 'Active'
        ]);

        Jobcategory::create([
            'category_name' => 'Factory Worker',
            'status' => 'Active'
        ]);

        Jobcategory::create([
            'category_name' => 'Labour',
            'status' => 'Active'
        ]);

        Jobcategory::create([
            'category_name' => 'Car Cleaner',
            'status' => 'Active'
        ]);

        Jobcategory::create([
            'category_name' => 'Welder',
            'status' => 'Active'
        ]);

        Jobcategory::create([
            'category_name' => 'Shafe',
            'status' => 'Active'
        ]);

        Jobcategory::create([
            'category_name' => 'Driver',
            'status' => 'Active'
        ]);

        Jobcategory::create([
            'category_name' => 'Office Assistant',
            'status' => 'Active'
        ]);

        JobCategory::create([
            'category_name' => 'Computer Operator',
            'status' => 'Active'
        ]);

        Jobcategory::create([
            'category_name' => 'Cleaner',
            'status' => 'Active'
        ]);

        Jobcategory::create([
            'category_name' => 'Data Enterer',
            'status' => 'Active'
        ]);
    }
}
