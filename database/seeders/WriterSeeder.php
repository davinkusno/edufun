<?php

namespace Database\Seeders;

use App\Models\Writer;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class WriterSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create();

        for ($i = 0; $i < 10; $i++) {
            Writer::create([
                'name' => $faker->name,
                'specialty' => $faker->jobTitle,
                'image_path' => "/images/writers/" . ($i + 1) . ".jpg",
            ]);
        }
    }
}
