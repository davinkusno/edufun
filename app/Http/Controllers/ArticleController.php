<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Category;
use App\Models\Writer;

class ArticleController extends Controller
{
    public function home()
    {
        $articles = Article::with(['writer', 'category'])->latest()->take(2)->get();

        return view('home', compact('articles'));
    }

    public function showArticle($id)
    {
        $article = Article::with(['writer', 'category'])->findOrFail($id);

        $article->increment('views');

        return view('article', compact('article'));
    }

    public function showCategory($category)
    {
        $categoryName = str_replace('-', ' ', $category);

        $categoryModel = Category::where('name', $categoryName)->firstOrFail();
    
        $articles = Article::where('category_id', $categoryModel->id)
            ->with('writer')
            ->latest()
            ->paginate(3);
    
        return view('categories', compact('categoryModel', 'articles'));
    }

    public function showAllWriters()
    {
        $writers = Writer::all();
    
        return view('writers', compact('writers'));
    }    

    public function about()
    {
        return view('about');
    }

    public function showPopular()
    {
        $articles = Article::with(['writer', 'category'])
            ->orderBy('views', 'desc')
            ->paginate(5);
    
        return view('popular', compact('articles'));
    }
    
}
