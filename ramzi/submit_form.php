<?php
include "koneksi.php";

try {
    // Membuat koneksi ke database
    $pdo = new PDO("mysql:host=$servername;dbname=$database", $username, "");
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Cek jika form disubmit
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Mengambil data dari form
        $name = $_POST['name'];
        $email = $_POST['email'];
        $phone = $_POST['phone'];
        $message = $_POST['message'];

        // Memasukkan data ke tabel `contacts`
        $sql = "INSERT INTO contacts (name, email, phone, message) VALUES (:name, :email, :phone, :message)";
        $stmt = $pdo->prepare($sql);

        $stmt->execute([
            ':name' => $name,
            ':email' => $email,
            ':phone' => $phone,
            ':message' => $message
        ]);

        header("Location: https://ramzi.stanley.my.id/contact.php?isSuccess=yes");
    }
} catch (PDOException $e) {
    die("Database connection failed: " . $e->getMessage());
}
