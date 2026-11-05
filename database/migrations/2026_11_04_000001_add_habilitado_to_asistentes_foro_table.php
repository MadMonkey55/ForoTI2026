<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('asistentes_foro', function (Blueprint $table) {
            $table->boolean('habilitado')->default(false)->after('telefono');
        });
    }

    public function down(): void
    {
        Schema::table('asistentes_foro', function (Blueprint $table) {
            $table->dropColumn('habilitado');
        });
    }
};
