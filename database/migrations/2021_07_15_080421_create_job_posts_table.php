<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJobPostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('job_posts', function (Blueprint $table) {
            $table->increments('id', 11)->unsigned();
            $table->integer('job_category_id')->nullable();
            $table->integer('user_id')->nullable();
            $table->integer('company_id')->nullable();
            $table->string('employment_type', 100)->nullable();
            $table->string('gender', 100)->nullable();
            $table->string('age_limit', 100)->nullable();
            $table->string('salary', 100)->nullable();
            $table->string('job_location', 100)->nullable();
            $table->integer('job_vacancy')->nullable();
            $table->integer('app_vacancy')->nullable();
            $table->string('end_date', 100)->nullable();
            $table->binary('demand_letter')->nullable();
            $table->integer('selected_wsc')->nullable();
            $table->integer('mra_id')->nullable();
            $table->string('recruiting_type')->nullable();
            $table->string('appointment_date', 100)->nullable();
            $table->string('appointment_time', 100)->nullable();
            $table->string('rejection_reason', 500)->nullable();

            $table->integer('bhc_approval')->default(0);

            $table->integer('forward_to_bhc')->default(0);
            $table->integer('forward_to_wsc')->default(0);
            $table->integer('wsc_send_status')->default(0);

            $table->enum('ma_status', ['New', 'Verified', 'Approved', 'Applied', 'Rejected', 'Pending','Demand'])->default('New');
            $table->enum('forward_status', ['Forwarded','Pending'])->nullable();
            $table->enum('status', ['New', 'Verified', 'Approved', 'Applied', 'Rejected', 'Pending'])->default('New');
            $table->enum('bd_embasy_status', ['Approved', 'Rejected'])->nullable();
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
        Schema::dropIfExists('job_posts');
    }
}
