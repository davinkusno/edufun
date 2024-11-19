@extends('layout')

@section('title', $article->title)

@section('content')
<div class="container my-5">
    <h1>{{ $article->title }}</h1>
    <p><strong>By:</strong> {{ $article->writer->name }} | <strong>Category:</strong> {{ $article->category->name }}</p>
    <p><strong>Published on:</strong> {{ $article->published_at->format('d M Y') }}</p>
    <p>{{ $article->content }}</p>
</div>
@endsection
