<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\ArticleController;

Route::get('/', [ArticleController::class, 'home'])->name('home');
Route::get('/category/{category}', [ArticleController::class, 'showCategory'])->name('category.show');
Route::get('/article/{id}', [ArticleController::class, 'showArticle'])->name('article.show');
Route::get('/writers', [ArticleController::class, 'showAllWriters'])->name('writers.index');
Route::get('/about', [ArticleController::class, 'about'])->name('about');
Route::get('/popular', [ArticleController::class, 'showPopular'])->name('popular');