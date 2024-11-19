<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Article;
use App\Models\Writer;
use Faker\Factory as Faker;

class ArticleSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create();

        $dataScienceTitles = [
            'The Future of Artificial Intelligence',
            'Machine Learning in Healthcare',
            'Big Data Analytics for Businesses',
            'Deep Learning Breakthroughs',
            'The Role of Data in Decision Making',
        ];

        $networkSecurityTitles = [
            'Cybersecurity Trends in 2024',
            'The Importance of Firewalls',
            'Penetration Testing Best Practices',
            'Network Security for Small Businesses',
            'The Evolution of Malware Defense',
        ];

        $writers = Writer::all();

        // Seeder for Data Science Articles
        foreach ($dataScienceTitles as $index => $title) {
            Article::create([
                'title' => $title,
                'category_id' => 1,
                'writer_id' => $writers->random()->id,
                'content' => $faker->paragraphs(3, true),
                'published_at' => $faker->dateTimeThisYear(),
                'image_path' => "/images/datascience/" . ($index + 1) . ".jpg",
                'views' => rand(1, 10),
            ]);
        }

        // Seeder for Network Security Articles
        foreach ($networkSecurityTitles as $index => $title) {
            Article::create([
                'title' => $title,
                'category_id' => 2,
                'writer_id' => $writers->random()->id,
                'content' => $faker->paragraphs(3, true),
                'published_at' => $faker->dateTimeThisYear(),
                'image_path' => "/images/networksecurity/" . ($index + 1) . ".jpg",
                'views' => rand(1, 10),
            ]);
        }
    }
}
