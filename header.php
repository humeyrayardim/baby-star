<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
?>
<!DOCTYPE html>
<html lang="tr">
<head>
<meta charset="UTF-8">
<title>BabyStar</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="/babystar/css/style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

</head>
<body>

<nav class="navbar navbar-expand-lg bg-white shadow-sm">
  <div class="container d-flex align-items-center justify-content-between">

    <!-- LOGO -->
    <a href="/babystar/index.php" class="logo-text">
        Baby<span>Star</span>
    </a>

    <!-- ORTA HOŞGELDİN -->
    <?php if(isset($_SESSION["user_id"])): ?>
        <div class="welcome-text d-none d-md-block">
            Hoşgeldin, <strong><?php echo $_SESSION["user_name"]; ?></strong>
        </div>
    <?php endif; ?>

    <ul class="navbar-nav align-items-center">

        <li class="nav-item">
          <a class="nav-link" href="/babystar/kategori/kiz.php">Kız Bebek</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="/babystar/kategori/erkek.php">Erkek Bebek</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="/babystar/iletisim.php">İletişim</a>
        </li>

        <?php if(!isset($_SESSION["user_id"])): ?>
            <li class="nav-item ms-3">
                <a href="/babystar/auth/login.php" class="btn-login">Giriş Yap</a>
            </li>
        <?php else: ?>
            <li class="nav-item ms-3">
                <!-- ✅ DOĞRU ÇIKIŞ -->
                <a href="/babystar/auth/logout.php" class="btn-logout">Çıkış Yap</a>
            </li>
        <?php endif; ?>

        <li class="nav-item">
          <a href="/babystar/actions/sepet.php" class="cart-icon">
            <i class="fa-solid fa-bag-shopping"></i>
          </a>
        </li>

    </ul>
  </div>
</nav>

<!-- 🔔 GİRİŞ BAŞARILI MESAJI -->
<?php if (isset($_SESSION["login_success"])): ?>
<div class="container mt-3">
    <div class="alert alert-success text-center shadow-sm">
        <?php 
            echo $_SESSION["login_success"]; 
            unset($_SESSION["login_success"]);
        ?>
    </div>
</div>
<?php endif; ?>

<div class="container mt-4">
