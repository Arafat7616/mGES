<?php

use Illuminate\Database\Seeder;
use App\Role;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Role::create([
            'id' => 1,
            'name' => 'Super admin',
            'slug' => 'super-admin',
            'status' => 'active'
        ]);

        Role::create([
            'id' => 2,
            'name' => 'Malaysian Employer',
            'slug' => 'malaysian-employer',
            'status' => 'active'
        ]);

        Role::create([
            'id' => 3,
            'name' => 'Welfare service center company',
            'slug' => 'welfare-service-center-company',
            'status' => 'active'
        ]);

        Role::create([
            'id' => 4,
            'name' => 'Bangladeshi High Commission',
            'slug' => 'bangladesh-high-commission',
            'status' => 'active'
        ]);

        Role::create([
            'id' => 5,
            'name' => 'Master One stop service',
            'slug' => 'master-one-stop-service',
            'status' => 'active'
        ]);

        Role::create([
            'id' => 6,
            'name' => 'Child One stop service',
            'slug' => 'child-one-stop-service',
            'status' => 'active'
        ]);

        Role::create([
            'id' => 7,
            'name' => 'Medical Agency',
            'slug' => 'medical-agency',
            'status' => 'active'
        ]);

        Role::create([
            'id' => 8,
            'name' => 'Training Agency',
            'slug' => 'training-agency',
            'status' => 'active'
        ]);

        Role::create([
            'id' => 9,
            'name' => 'travel agency',
            'slug' => 'travel-agency',
            'status' => 'active'
        ]);

        Role::create([
            'id' => 10,
            'name' => 'Biometric Agency',
            'slug' => 'biometric-agency',
            'status' => 'active'
        ]);

        Role::create([
            'id' => 11,
            'name' => 'Bangladesh Recruiting Agency',
            'slug' => 'bangladesh-recruiting-agency',
            'status' => 'active'
        ]);

        Role::create([
            'id' => 12,
            'name' => 'Bangladeshi admin',
            'slug' => 'bangladeshi-admin',
            'status' => 'active'
        ]);

        Role::create([
            'id' => 13,
            'name' => 'Employer',
            'slug' => 'employer',
            'status' => 'active'
        ]);

        Role::create([
            'id' => 14,
            'name' => 'Malaysia Admin',
            'slug' => 'malaysia-admin',
            'status' => 'active'
        ]);

        Role::create([
            'id' => 15,
            'name' => 'Malaysia Embassy',
            'slug' => 'malaysia-embassy',
            'status' => 'active'
        ]);

        Role::create([
            'id' => 16,
            'name' => 'Candidate',
            'slug' => 'candidate',
            'status' => 'active'
        ]);

        Role::create([
            'id' => 17,
            'name' => 'Malaysia Recruiting Agency',
            'slug' => 'malaysia-recruiting-agency',
            'status' => 'active'
        ]);
    }
}
