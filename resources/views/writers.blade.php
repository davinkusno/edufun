@extends('layout')

@section('title', 'Writers')

@section('content')
<div class="container my-5">
    <div class="text-center mb-5">
        <h1 class="display-4 fw-bold">Our Writers</h1>
        <p class="text-muted">Meet the talented individuals who bring stories to life</p>
    </div>

    <div class="row g-4">
        @forelse($writers as $writer)
            <div class="col-md-6 col-lg-4">
                <div class="card border-0 shadow-sm h-100">
                    <div class="card-body text-center">
                        <div class="mb-3">
                            <img src="{{ $writer->image_path ?? 'https://via.placeholder.com/100' }}" 
                                 alt="{{ $writer->name }}" 
                                 class="rounded-circle img-fluid shadow-sm" 
                                 style="width: 100px; height: 100px; object-fit: cover;">
                        </div>
                        <h5 class="card-title fw-bold">{{ $writer->name }}</h5>
                        <p class="card-text text-muted">
                            <strong>Specialty:</strong> {{ $writer->specialty }}
                        </p>
                    </div>
                </div>
            </div>
        @empty
            <div class="col-12">
                <p class="text-center text-muted fs-5">No writers available at the moment.</p>
            </div>
        @endforelse
    </div>
</div>
@endsection
