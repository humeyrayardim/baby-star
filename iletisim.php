<?php include "header.php"; ?>
<link rel="stylesheet" href="css/iletisim.css">

<div class="contact-container">
    <div class="contact-box">

        <!-- SOL BİLGİ ALANI -->
        <div class="contact-info">
            <h3>Bizimle İletişime Geçin</h3>
            <p>
                BabyStar ailesi olarak sizden gelen her mesajı önemsiyoruz.  
                Ürünlerimiz, siparişleriniz veya önerileriniz için bize dilediğiniz zaman ulaşabilirsiniz.
            </p>

            <ul>
                <li><strong>📍 Adres: </strong>Balıkesir/ Gönen / Türkiye</li>
                <li><strong>📞 Telefon: </strong> 0537 711 45 45</li>
                <li><strong>✉️ E-posta: </strong> info@babystar.com</li>
                <li><strong>⏰ Çalışma Saatleri: </strong> 10:00 – 19:00</li>
            </ul>

            <div class="social-links">
                <a href="https://www.instagram.com/">Instagram</a>
                <a href="https://www.whatsapp.com/?lang=tr">WhatsApp</a>

            </div>
        </div>

        <!-- SAĞ FORM -->
        <div class="contact-form">
            <h3>Bize Yazın</h3>

            <form method="post">
                <input type="text" name="name" placeholder="Ad Soyad" required>
                <input type="email" name="email" placeholder="E-posta Adresiniz" required>
                <textarea name="message" placeholder="Mesajınız"></textarea>

                <button type="submit">Mesajı Gönder</button>
            </form>
        </div>

    </div>
</div>

<?php include "footer.php"; ?>
