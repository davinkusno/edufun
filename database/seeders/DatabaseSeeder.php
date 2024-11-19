<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    public function run()
    {
        $this->call([
            WriterSeeder::class,
            CategorySeeder::class,
            ArticleSeeder::class,
        ]);
    }
}
