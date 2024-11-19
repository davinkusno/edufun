<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    protected $fillable = ['title', 'category_id', 'writer_id', 'content', 'published_at'];
    protected $dates = ['published_at'];

    public function writer()
    {
        return $this->belongsTo(Writer::class);
    }

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    protected function casts(): array {
        return [
            'published_at' => 'date: d M Y'
        ];
    }
}
