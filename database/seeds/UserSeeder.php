<?php

use Illuminate\Database\Seeder;
use App\User;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'role_id' => 1,
            'country_id' => 2,
            'name' => 'Super admin',
            'email' => 'sa@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'super-admin',
            'active_status' => 'Approved',
        ]);

        User::create([
            'role_id' => 12,
            'country_id' => 2,
            'name' => 'Bangladesh admin',
            'company_name' => 'Bangladesh admin',
            'email' => 'ba@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'bangladeshi-admin',
            'active_status' => 'Approved',
        ]);

        User::create([
            'role_id' => 9,
            'country_id' => 2,
            'name' => 'Travel Agency',
            'company_name' => 'Travel Agency',
            'email' => 'travel@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'travel-agency',
            'active_status' => 'Approved',
        ]);
        User::create([
            'role_id' => 10,
            'country_id' => 2,
            'name' => 'Biometric Agency',
            'company_name' => 'Biometric Agency',
            'email' => 'bio@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'biometric-agency',
            'active_status' => 'Approved',
        ]);

        User::create([
            'role_id' => 11,
            'country_id' => 2,
            'name' => 'Bangladesh Recruiting agency',
            'company_name' => 'Bangladesh Recruiting agency',
            'email' => 'bra@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'bangladesh-recruiting-agency',
            'active_status' => 'Approved',
        ]);

        User::create([
            'role_id' => 3,
            'country_id' => 2,
            'name' => 'Welfare sevice centre',
            'company_name' => 'Welfare sevice centre',
            'email' => 'wsc@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'welfare-service-center-company',
            'active_status' => 'Approved',
        ]);

        User::create([
            'role_id' => 5,
            'country_id' => 2,
            'name' => 'Master One stop service',
            'company_name' => 'Master One stop service',
            'email' => 'moss@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'master-one-stop-service',
            'active_status' => 'Approved',
        ]);

        User::create([
            'role_id' => 2,
            'country_id' => 2,
            'name' => 'Malaysian Employer',
            'company_name' => 'Malaysian Employer',
            'email' => 'malaysianemployer@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'malaysian-employer',
            'active_status' => 'Approved',
        ]);

        User::create([
            'role_id' => 4,
            'country_id' => 2,
            'name' => 'Bangladesh High Commission ',
            'company_name' => 'Bangladesh High Commission ',
            'email' => 'bhc@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'bangladesh-high-commission',
            'active_status' => 'Approved',
        ]);

        User::create([
            'role_id' => 14,
            'country_id' => 2,
            'name' => 'Malaysia Admin',
            'company_name' => 'Malaysia Admin',
            'email' => 'malaysiaadmin@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'malaysia-admin',
            'active_status' => 'Approved',
        ]);
        User::create([
            'role_id' => 6,
            'country_id' => 2,
            'name' => 'Child One Stop Service',
            'company_name' => 'Child One Stop Service',
            'email' => 'coss@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'child-one-stop-service',
            'active_status' => 'Approved',
        ]);
        User::create([
            'role_id' => 7,
            'country_id' => 2,
            'childosc_id' => 11,
            'name' => 'Medical Agency',
            'company_name' => 'Medical Agency',
            'email' => 'ma@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'medical-agency',
            'active_status' => 'Approved',
        ]);

        User::create([
            'role_id' => 8,
            'country_id' => 2,
            'childosc_id' => 11,
            'name' => 'Training Agency',
            'company_name' => 'Training Agency',
            'email' => 'ta@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'training-agency',
            'active_status' => 'Approved',
        ]);
        User::create([
            'role_id' => 15,
            'country_id' => 2,
            'name' => 'Malaysia Embassy',
            'company_name' => 'Malaysia Embassy',
            'email' => 'me@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'malaysia-embassy',
            'active_status' => 'Approved',
        ]);
        User::create([
            'role_id' => 16,
            'country_id' => 2,
            'name' => 'Candidate',
            'company_name' => 'Candidate',
            'email' => 'candidate@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'candidate',
            'active_status' => 'Approved',
        ]);
        User::create([
            'role_id' => 17,
            'country_id' => 2,
            'name' => 'Malaysia Recruiting Agency',
            'company_name' => 'Malaysia Recruiting Agency',
            'email' => 'mra@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'malaysia-recruiting-agency',
            'active_status' => 'Approved',
        ]);



        User::create([
            'role_id' => 11,
            'country_id' => 18,
            'name' => 'Sonet Recruiting Agency BD',
            'email' => 'srab@gmail.com',
            'user_type' => 'bangladesh-recruiting-agency',
            'active_status' => 'Approved',
            'domain' => 'srab.com',
            'company_name' => 'Sonet Recruiting Agency BD',
            'company_register_number' => '1313164',
            'abbr' => 'Sonet Recruiting Agency BD',
            'phone' => '01487984654987',
            'city' => 'Dhaka',
            'state' => 'Dhaka',
            'password' => Hash::make('12345'),
            'address1' => 'Dhaka fokirapul',
            'address2' => 'Dkaha banglamotor',
            'logo' => 'uploads/profile/vogkW72ZyKCZX5D50xjm-1646218057.png',
            'document1' => 'uploads/profile/VRlWh9l1mzJVK2GyvZZ0-1646218058.pdf',
            'document2' => NULL,
        ]);

        User::create([
            'role_id' => 18,
            'country_id' => 18,
            'name' => 'Call Center',
            'email' => 'call-center@gmail.com',
            'user_type' => 'call-center',
            'active_status' => 'Approved',
            'domain' => 'call-center.com',
            'company_name' => 'Call Center',
            'company_register_number' => '1313164',
            'abbr' => 'cc',
            'phone' => '01852525125',
            'city' => 'Dhaka',
            'state' => 'Dhaka',
            'password' => Hash::make('12345'),
            'address1' => 'Dhaka Banani',
            'address2' => 'Dkaha Banani',
            'logo' => 'uploads/profile/vogkW72ZyKCZX5D50xjm-1646218057.png',
            'document1' => 'uploads/profile/VRlWh9l1mzJVK2GyvZZ0-1646218058.pdf',
            'document2' => NULL,
        ]);
    }
}
