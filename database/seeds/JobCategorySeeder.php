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
            'category_name' => 'Software Engineer',
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
            'category_name' => 'Civil Engineer',
            'status' => 'Active'
        ]);

        Jobcategory::create([
            'category_name' => 'Mechanical engineer',
            'status' => 'Active'
        ]);

        Jobcategory::create([
            'category_name' => 'Electrical engineer',
            'status' => 'Active'
        ]);

        Jobcategory::create([
            'category_name' => 'Sales Man',
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
            'category_name' => 'Doctor',
            'status' => 'Active'
        ]);

        Jobcategory::create([
            'category_name' => 'Data Enterer',
            'status' => 'Active'
        ]);
    }
}
