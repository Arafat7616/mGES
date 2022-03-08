<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCandidatesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('candidates', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('role_id');
            $table->unsignedBigInteger('job_category_id');
            $table->unsignedBigInteger('job_id')->nullable();
            $table->unsignedBigInteger('company_id')->nullable();

            //important
            $table->unsignedBigInteger('pre_medical_id')->nullable();
            $table->unsignedBigInteger('pre_training_id')->nullable();
            $table->unsignedBigInteger('pre_biomatric_id')->nullable();
            $table->integer('pre_medical_status')->default(0)->comment('0 = Pending , 1 = Passed , 2 = Failed ');
            $table->integer('pre_training_status')->default(0)->comment('0 = Pending , 1 = Passed , 2 = Failed ');
            $table->integer('pre_biomatric_status')->default(0)->comment('0 = Pending , 1 = Passed , 2 = Failed ');

            $table->integer('ready_to_travel')->default(0);

            $table->unsignedBigInteger('selected_osc_id')->nullable();
            $table->text('present_address')->nullable();
            $table->text('permanent_address')->nullable();
            $table->string('candidate_name')->nullable();
            $table->string('nationality')->nullable();
            $table->string('candidate_dob')->nullable();
            $table->string('candidate_gender')->nullable();
            $table->string('passport_number')->nullable();
            $table->string('phone_number')->nullable();
            $table->string('candidate_email')->nullable();
            $table->string('candidate_password')->nullable();
            $table->string('country')->nullable();

            // not nessasary . have to remove next time
            $table->string('pre_medical_certificate')->nullable();
            $table->string('pre_traning_certificate')->nullable();
            $table->string('pre_medical_report')->nullable();
            $table->string('pre_training_report')->nullable();


            $table->string('created_by')->nullable();
            $table->string('updated_by')->nullable();
            $table->string('pre_medical_comments')->nullable();
            $table->string('pre_training_comments')->nullable();
            $table->string('approval_status')->nullable();
            $table->string('payment_assigned')->nullable();
            $table->string('status')->nullable()->comment('Active', 'Inactive', 'Selected', 'Reviewed', 'Forwarded', 'Interview', 'confirmed');
            $table->string('result_status')->default('New')->comment('New','Physical Interview','Online Interview','Selected','Rejected','Assigned');
            $table->integer('permission_status')->default(0)->comment('1 = single stop center passed, 2 = calling visa approved');
            $table->string('sending_status')->nullable();
            $table->string('offer_letter')->nullable();
            $table->string('employer_comments')->nullable();
            $table->boolean('offered_status')->default(0);

            $table->unsignedBigInteger('created_id')->nullable();
            $table->unsignedBigInteger('updated_id')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('candidates');
    }
}
