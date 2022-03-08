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
            'name' => '5M International Ltd.',
            'company_name' => '5M International Ltd.',
            'email' => 'bra@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'bangladesh-recruiting-agency',
            'address1' => 'Banani,Dhaka,Bangladesh',
            'address2' => 'Mirpur,Dhaka,Bangladesh',
            'company_register_number' => '154954897',
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
            'user_type' => '',
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


        // Malaysian Employer company seeder starts

        User::create([
            'role_id' => 2,
            'country_id' => 2,
            'name' => 'Versatlilo London',
            'company_name' => 'Versatlilo London',
            'email' => 'versatlilolondon@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'malaysian-employer',
            'active_status' => 'Approved',
        ]);

        User::create([
            'role_id' => 2,
            'country_id' => 2,
            'name' => 'Kamrul Group',
            'company_name' => 'Kamrul Group',
            'email' => 'kamrulgroup@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'malaysian-employer',
            'active_status' => 'Approved',
        ]);

        User::create([
            'role_id' => 2,
            'country_id' => 2,
            'name' => 'TFP Solutions (Malaysia)',
            'company_name' => 'TFP Solutions (Malaysia)',
            'email' => 'tfp-solutions-malaysia@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'malaysian-employer',
            'active_status' => 'Approved',
        ]);

        User::create([
            'role_id' => 2,
            'country_id' => 2,
            'name' => 'Kamrul Agro Industries Ltd.',
            'company_name' => 'Kamrul Agro Industries Ltd.',
            'email' => 'kamrul-agro@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'malaysian-employer',
            'active_status' => 'Approved',
        ]);
        User::create([
            'role_id' => 2,
            'country_id' => 2,
            'name' => 'Kamrul Food Industries Ltd.',
            'company_name' => 'Kamrul Food Industries Ltd.',
            'email' => 'kamrul-food@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'malaysian-employer',
            'active_status' => 'Approved',
        ]);
        User::create([
            'role_id' => 2,
            'country_id' => 2,
            'name' => 'Meastro Soft Ltd.',
            'company_name' => 'Meastro Soft Ltd.',
            'email' => 'meastro-soft@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'malaysian-employer',
            'active_status' => 'Approved',
        ]);
        User::create([
            'role_id' => 2,
            'country_id' => 2,
            'name' => 'Maestro Crown College',
            'company_name' => 'Maestro Crown College',
            'email' => 'maestro-crown-college@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'malaysian-employer',
            'active_status' => 'Approved',
        ]);
        User::create([
            'role_id' => 2,
            'country_id' => 2,
            'name' => 'Tap and Pay WLL.Bahrain',
            'company_name' => 'Tap and Pay WLL.Bahrain',
            'email' => 'tap-and-pay@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'malaysian-employer',
            'active_status' => 'Approved',
        ]);
        User::create([
            'role_id' => 2,
            'country_id' => 2,
            'name' => 'DRB-Hicom Berhad.',
            'company_name' => 'DRB-Hicom Berhad.',
            'email' => 'drb-hicom-berhad@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'malaysian-employer',
            'active_status' => 'Approved',
        ]);
        User::create([
            'role_id' => 2,
            'country_id' => 2,
            'name' => 'Honda Motor Co.',
            'company_name' => 'Honda Motor Co.',
            'email' => 'honda-motor-co.@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'malaysian-employer',
            'active_status' => 'Approved',
        ]);
        // Malaysian Employer company seeder ends

        // Bangladesh Recruiting Agency company seeder starts
        User::create([
            'role_id' => 2,
            'country_id' => 2,
            'name' => 'A-Plus International',
            'company_name' => 'A-Plus International',
            'email' => 'a-plus-international@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'bangladesh-recruiting-agency',
            'address1' => 'Banani,Dhaka,Bangladesh',
            'address2' => 'Mirpur,Dhaka,Bangladesh',
            'company_register_number' => '154954897',
            'active_status' => 'Approved',
        ]);
        User::create([
            'role_id' => 2,
            'country_id' => 2,
            'name' => 'Eastern Bay Bangladesh',
            'company_name' => 'Eastern Bay Bangladesh',
            'email' => 'Eastern-Bay-Bangladesh@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'bangladesh-recruiting-agency',
            'address1' => 'Banani,Dhaka,Bangladesh',
            'address2' => 'Mirpur,Dhaka,Bangladesh',
            'company_register_number' => '154954897',
            'active_status' => 'Approved',
        ]);

        User::create([
            'role_id' => 2,
            'country_id' => 2,
            'name' => 'shohan International',
            'company_name' => 'shohan International',
            'email' => 'simplex-international@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'bangladesh-recruiting-agency',
            'address1' => 'Banani,Dhaka,Bangladesh',
            'address2' => 'Mirpur,Dhaka,Bangladesh',
            'company_register_number' => '154954897',
            'active_status' => 'Approved',
        ]);
        User::create([
            'role_id' => 2,
            'country_id' => 2,
            'name' => 'Sarkar Recruiting Agency Ltd.',
            'company_name' => 'Sarkar Recruiting Agency Ltd.',
            'email' => 'sarkar-recruiting-ggency-ltd.@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'bangladesh-recruiting-agency',
            'address1' => 'Banani,Dhaka,Bangladesh',
            'address2' => 'Mirpur,Dhaka,Bangladesh',
            'company_register_number' => '154954897',
            'active_status' => 'Approved',
        ]);
        User::create([
            'role_id' => 2,
            'country_id' => 2,
            'name' => 'Golden Arrow Ltd.',
            'company_name' => 'Golden Arrow Ltd.',
            'email' => 'golden-arrow-ltd@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'bangladesh-recruiting-agency',
            'address1' => 'Banani,Dhaka,Bangladesh',
            'address2' => 'Mirpur,Dhaka,Bangladesh',
            'company_register_number' => '154954897',
            'active_status' => 'Approved',
        ]);
        User::create([
            'role_id' => 2,
            'country_id' => 2,
            'name' => 'Nac International',
            'company_name' => 'Nac International',
            'email' => 'nac-international@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'bangladesh-recruiting-agency',
            'address1' => 'Banani,Dhaka,Bangladesh',
            'address2' => 'Mirpur,Dhaka,Bangladesh',
            'company_register_number' => '154954897',
            'active_status' => 'Approved',
        ]);
        User::create([
            'role_id' => 2,
            'country_id' => 2,
            'name' => 'Tribeni International',
            'company_name' => 'Tribeni International',
            'email' => 'tribeni-international@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'bangladesh-recruiting-agency',
            'address1' => 'Banani,Dhaka,Bangladesh',
            'address2' => 'Mirpur,Dhaka,Bangladesh',
            'company_register_number' => '154954897',
            'active_status' => 'Approved',
        ]);
        User::create([
            'role_id' => 2,
            'country_id' => 2,
            'name' => '	Binimoy International',
            'company_name' => '	Binimoy International',
            'email' => 'Binimoyinternational@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'bangladesh-recruiting-agency',
            'address1' => 'Banani,Dhaka,Bangladesh',
            'address2' => 'Mirpur,Dhaka,Bangladesh',
            'company_register_number' => '154954897',
            'active_status' => 'Approved',
        ]);
        User::create([
            'role_id' => 2,
            'country_id' => 2,
            'name' => 'Orchid View Ltd.',
            'company_name' => 'Orchid View Ltd.',
            'email' => 'orchid-view-ltd@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'bangladesh-recruiting-agency',
            'address1' => 'Banani,Dhaka,Bangladesh',
            'address2' => 'Mirpur,Dhaka,Bangladesh',
            'company_register_number' => '154954897',
            'active_status' => 'Approved',
        ]);
        User::create([
            'role_id' => 2,
            'country_id' => 2,
            'name' => 'Kazi International',
            'company_name' => 'Kazi International',
            'email' => 'kazi-international@gmail.com',
            'password' => Hash::make('12345'),
            'user_type' => 'bangladesh-recruiting-agency',
            'address1' => 'Banani,Dhaka,Bangladesh',
            'address2' => 'Mirpur,Dhaka,Bangladesh',
            'company_register_number' => '154954897',
            'active_status' => 'Approved',
        ]);
        // Bangladesh Recruiting Agency company seeder ends

    }
}
