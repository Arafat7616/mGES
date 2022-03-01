<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(CountrySeeder::class);
        $this->call(CompanySeeder::class);
        $this->call(StaticOptionSeeder::class);
        $this->call(RoleSeeder::class);
        $this->call(UserSeeder::class);
        $this->call(JobCategorySeeder::class);
        $this->call(EventCategorySeeder::class);
        $this->call(JobPostSeeder::class);
        $this->call(AppliedJobSeeder::class);
        $this->call(CandidateSeeder::class);
        $this->call(NewPassportServiceSeeder::class);
        $this->call(LostPassportServiceSeeder::class);
        $this->call(ExtensionPassportServiceSeeder::class);
        $this->call(SubmittedTravelEnquirySeeder::class);
        $this->call(TravelEnquirySeeder::class);
        $this->call(LegalAidServiceSeeder::class);
        $this->call(ChangeVisaServiceSeeder::class);
        $this->call(ChangeEmployerServiceSeeder::class);
        $this->call(PaymentServiceSeeder::class);
        $this->call(AmnestyServiceSeeder::class);
        $this->call(ADRServiceSeeder::class);
        $this->call(CharityServiceSeeder::class);
        $this->call(MeetAndGreetSeeder::class);
        $this->call(JailDeportationSeeder::class);
        $this->call(DeadbodyTransferSeeder::class);
        $this->call(MedicalCompensationSeeder::class);
        $this->call(InsuranceServiceSeeder::class);
        $this->call(IssuanceCertificateSeeder::class);
        $this->call(AttestationCertificateSeeder::class);
        $this->call(RegistrationCertificateSeeder::class);
        // $this->call(NotificationSeeder::class);
    }
}
