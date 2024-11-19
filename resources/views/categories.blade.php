@extends('layout')

@section('title', $categoryModel->name)

@section('content')
<div class="container my-5">
    <div class="text-center mb-5">
        <h1 class="display-4 fw-bold">{{ $categoryModel->name }}</h1>
        <p class="text-muted">Explore the latest articles in this category</p>
    </div>

    <div class="row g-4">
        @foreach($articles as $article)
            <div class="col-md-6 col-lg-4">
                <div class="card border-0 shadow-sm h-100">
                    <div class="position-relative overflow-hidden rounded-top">
                        <img src="{{ $article->image_path }}" 
                             class="card-img-top img-fluid" 
                             alt="{{ $article->title }}">
                    </div>
                    <div class="card-body">
                        <h5 class="card-title fw-bold">{{ $article->title }}</h5>
                        <p class="card-text text-muted">
                            {{ Str::limit($article->content, 100) }}
                        </p>
                        <a href="{{ route('article.show', $article->id) }}" class="btn btn-outline-primary btn-sm">Read More</a>
                    </div>
                </div>
            </div>
        @endforeach
    </div>

    <!-- Pagination -->
    <div class="mt-5 d-flex justify-content-center">
        {{ $articles->links() }}
    </div>
</div>
@endsection
