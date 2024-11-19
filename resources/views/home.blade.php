@extends('layout')

@section('title', 'Home')

@section('content')
<!-- Hero Section -->
<div class="container-fluid p-0">
    <div class="hero position-relative">
        <img src="/images/edufun.jpg" alt="Hero Image" class="img-fluid w-100">
        <div class="hero-overlay position-absolute top-50 start-50 translate-middle text-center text-white">
            <h1 class="display-4 fw-bold">Welcome to Our Blog</h1>
            <p class="lead">Stay updated with the latest news and stories</p>
        </div>
    </div>
</div>

<!-- Article Section -->
<div class="container my-5">
    <h2 class="mb-4 text-center fw-bold">Featured Articles</h2>
    <div class="row g-4">
        @foreach($articles->take(2) as $article)
            <div class="col-lg-6">
                <div class="card border-0 shadow rounded-4 h-100">
                    <div class="position-relative overflow-hidden rounded-top">
                        <img src="{{ $article->image_path ?? 'https://via.placeholder.com/600x400' }}" 
                             class="card-img-top img-fluid" 
                             alt="{{ $article->title }}">
                        <span class="badge bg-dark position-absolute top-0 end-0 m-3">
                            {{ $article->published_at->format('d M Y') }}
                        </span>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title fw-bold">{{ $article->title }}</h5>
                        <p class="card-text text-muted mb-2">By: {{ $article->writer->name }}</p>
                        <p class="card-text">{{ Str::limit($article->content, 120) }}</p>
                        <a href="{{ route('article.show', $article->id) }}" class="btn btn-outline-dark btn-sm">Read More</a>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>
@endsection
