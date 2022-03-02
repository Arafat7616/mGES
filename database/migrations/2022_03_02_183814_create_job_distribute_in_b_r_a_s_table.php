<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJobDistributeInBRASTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('job_distribute_in_b_r_a_s', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('job_post_id')->nullable();
            $table->unsignedBigInteger('bra_id')->nullable();
            $table->unsignedBigInteger('bra_interest_id')->nullable();
            $table->string('distributed_vacancy')->nullable();
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
        Schema::dropIfExists('job_distribute_in_b_r_a_s');
    }
}
