<?php

use Illuminate\Database\Seeder;

class StaticOptionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        set_static_option('logo', 'uploads/images/logo.png');
        set_static_option('no_image', 'uploads/images/setting/no-image.png');
        set_static_option('user', 'uploads/images/setting/user.png');
    }
}
