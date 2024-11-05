<?php
include "koneksi.php";
include "templates/header.php";

$sql = "SELECT * FROM about";
$result = $conn->query($sql);
$about = null;

if ($result->num_rows > 0) {
    $about = $result->fetch_assoc();
} else {
    echo "error";
}
$conn->close(); #setelah data diambil koneksi close

?>

<!-- About Section-->
<section class="bg-light py-5">
    <div class="container px-5">
        <div class="row gx-5 justify-content-center">
            <div class="col-xxl-8">
                <div class="text-center my-5">
                    <h2 class="display-5 fw-bolder"><span class="text-gradient d-inline">About Me</span></h2>
                    <p class="lead fw-light mb-4">Hello! I'm <?= $about["nama"]; ?>, here to assist you in all things business and technology.</p>

                    <!-- Single-Paragraph Description -->
                    <p class="text-muted">
                        I am currently a student at <strong><?= $about["universitas"]; ?></strong> majoring in <strong><?= $about["prodi"]; ?></strong>. My academic journey has equipped me with a solid foundation in programming, software development, and innovative solutions, all of which I am eager to apply in real-world business contexts. Alongside my studies, I enjoy swimming, basketball, and futsal, as these activities keep me balanced and focused. I am proficient in various programming languages and tools, including PHP and JavaScript, and continuously explore new advancements in machine learning and artificial intelligence. My ultimate goal is to bridge the gap between technology and business, providing impactful, tech-driven solutions for the future.
                    </p>

                    <!-- Social Links -->
                    <div class="d-flex justify-content-center fs-2 gap-4">
                        <a class="text-gradient" href="https://x.com/?lang=en-id" target="_blank"><i class="bi bi-twitter"></i></a>
                        <a class="text-gradient" href="https://www.linkedin.com/" target="_blank"><i class="bi bi-linkedin"></i></a>
                        <a class="text-gradient" href="https://github.com/" target="_blank"><i class="bi bi-github"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>