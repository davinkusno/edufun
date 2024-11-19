@extends('layout')

@section('title', 'About Us')

@section('content')
<div class="container my-5">
    <div class="text-center mb-5">
        <h1 class="display-4 fw-bold">About EduFun</h1>
        <p class="text-muted">Revolutionizing Education in Indonesia through Technology</p>
    </div>

    <div class="row align-items-center">
        <div class="col-md-6">
            <img src="/images/edufun2.jpeg" alt="EduFun" class="img-fluid rounded shadow-sm">
        </div>
        <div class="col-md-6">
            <p class="fs-5">
                EduFun adalah perusahaan pendidikan berbasis teknologi asal Indonesia. EduFun menyediakan layanan akses pendidikan dalam format tulisan berbahasa Indonesia yang disajikan secara online melalui website.
            </p>
            <p class="fs-5">
                Hingga Juni 2024, EduFun memiliki lebih dari <strong>10 ribu pengguna</strong>. EduFun hadir sebagai bentuk revolusi dari pendidikan di Indonesia dengan mengedepankan cara berpikir kritis, logis, rasional, dan sumber pengetahuan sains yang terintegrasi terhadap semua mahasiswa IT di Indonesia. 
            </p>
            <p class="fs-5">
                EduFun bercita-cita mencetak generasi Indonesia yang memahami ilmu pengetahuan dan cinta belajar.
            </p>
        </div>
    </div>
</div>
@endsection
