<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hex Solar - Navigation</title>
</head>
<body>

<!-- ============================================ -->
<!-- HEX SOLAR NAVIGATION - Always Scrolled State -->
<!-- ============================================ -->

<nav class="hex-nav scrolled" id="hexNavigation">
    <div class="nav-container">
        <!-- Logo -->
        <div class="nav-logo">
            <a href="/home/">
                <img src="https://ghostwhite-dotterel-683541.hostingersite.com/wp-content/uploads/2025/07/hex_solar_logo_transparent-1.png" alt="Hex Solar" class="logo-img">
            </a>
        </div>
        
        <!-- Desktop Navigation Menu -->
        <div class="nav-menu" id="navMenu">
            <a href="/home/" class="nav-link">Inicio</a>
            <a href="/cotizar/" class="nav-link">Cotizar</a>
            <a href="/servicios/" class="nav-link">Servicios</a>
            <a href="/proceso/" class="nav-link">Proceso</a>
            <a href="/nosotros/" class="nav-link">Nosotros</a>
            <a href="/contacto/" class="nav-link">Contacto</a>
        </div>
        
        <!-- Mobile Menu Toggle -->
        <button class="mobile-toggle" id="mobileToggle" aria-label="Menu">
            <span></span>
            <span></span>
            <span></span>
        </button>
    </div>
</nav>

<!-- Mobile Menu Overlay -->
<div class="mobile-menu-overlay" id="mobileMenuOverlay">
    <div class="mobile-menu-content">
        <button class="mobile-close" id="mobileClose" aria-label="Cerrar">
            <span></span>
            <span></span>
        </button>
        <div class="mobile-links">
            <a href="/home/" class="mobile-link">Inicio</a>
            <a href="/cotizar/" class="mobile-link">Cotizar</a>
            <a href="/servicios/" class="mobile-link">Servicios</a>
            <a href="/proceso/" class="mobile-link">Proceso</a>
            <a href="/nosotros/" class="mobile-link">Nosotros</a>
            <a href="/contacto/" class="mobile-link">Contacto</a>
        </div>
    </div>
</div>

<style>
/* ============================================ */
/* RESET & BASE STYLES                          */
/* ============================================ */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
}

/* ============================================ */
/* NAVIGATION CONTAINER - Always Blue           */
/* ============================================ */
.hex-nav {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    z-index: 1000;
    background: rgba(23, 26, 32, 0.95);
    backdrop-filter: blur(20px);
    -webkit-backdrop-filter: blur(20px);
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.08);
    padding: 0px 0;
    max-height: 60px;
    transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
}

.nav-container {
    max-width: 1400px;
    margin: 0 auto;
    padding: 0 30px;
    height: 100%;  /* Add this */
    display: flex;
    justify-content: space-between;
    align-items: center;
}

/* ============================================ */
/* LOGO STYLES                                  */
/* ============================================ */
.nav-logo a {
    display: flex;
    align-items: center;
    max-width: 120px;
    margin-left: -10px;
}

.logo-img {
    height: 35px;
    width: auto;
}

/* ============================================ */
/* DESKTOP MENU STYLES                          */
/* ============================================ */
.nav-menu {
    display: flex;
    gap: 35px;
    align-items: center;

}

.nav-link {
    font-size: 15px;
    font-weight: 500;
    color: #FFFFFF;
    text-decoration: none;
    position: relative;
    transition: all 0.2s ease;
    padding: 4px 0;
    letter-spacing: 0.5px;
}

/* Hover underline effect */
.nav-link::after {
    content: '';
    position: absolute;
    bottom: 0;
    left: 0;
    width: 0;
    height: 2px;
    background: #FFFFFF;
    transition: width 0.2s ease;
}

.nav-link:hover::after {
    width: 100%;
}

/* ============================================ */
/* MOBILE TOGGLE BUTTON                         */
/* ============================================ */
.mobile-toggle {
    display: none;
    background: none;
    border: none;
    cursor: pointer;
    padding: 10px;
    position: relative;
    z-index: 1002;
}

.mobile-toggle span {
    display: block;
    width: 24px;
    height: 2px;
    background: #FFFFFF;
    margin: 5px 0;
    transition: all 0.3s ease;
    border-radius: 2px;
}

/* Toggle animation */
.mobile-toggle.active span:nth-child(1) {
    transform: rotate(45deg) translate(5px, 5px);
}

.mobile-toggle.active span:nth-child(2) {
    opacity: 0;
}

.mobile-toggle.active span:nth-child(3) {
    transform: rotate(-45deg) translate(7px, -6px);
}

/* ============================================ */
/* MOBILE MENU OVERLAY                          */
/* ============================================ */
.mobile-menu-overlay {
    position: fixed;
    top: 0;
    right: -100%;
    width: 100%;
    height: 100vh;
    background: #FFFFFF;
    z-index: 999;
    transition: right 0.3s cubic-bezier(0.4, 0, 0.2, 1);
    overflow-y: auto;
}

.mobile-menu-overlay.active {
    right: 0;
}

.mobile-menu-content {
    padding: 80px 40px 40px;
    min-height: 100vh;
    display: flex;
    flex-direction: column;
}

.mobile-close {
    position: absolute;
    top: 30px;
    right: 40px;
    background: none;
    border: none;
    cursor: pointer;
    width: 30px;
    height: 30px;
}

.mobile-close span {
    display: block;
    width: 24px;
    height: 2px;
    background: #171A20;
    position: absolute;
    top: 50%;
    left: 50%;
    border-radius: 2px;
}

.mobile-close span:first-child {
    transform: translate(-50%, -50%) rotate(45deg);
}

.mobile-close span:last-child {
    transform: translate(-50%, -50%) rotate(-45deg);
}

.mobile-links {
    display: flex;
    flex-direction: column;
    gap: 0;
    margin-top: 40px;
}

.mobile-link {
    font-size: 28px;
    font-weight: 500;
    color: #171A20;
    text-decoration: none;
    padding: 20px 0;
    border-bottom: 1px solid #E5E5E5;
    transition: all 0.2s ease;
}

.mobile-link:hover {
    color: #7BC043;
    padding-left: 10px;
}

/* ============================================ */
/* RESPONSIVE STYLES                            */
/* ============================================ */
@media (max-width: 1024px) {
    .nav-container {
        padding: 0 30px;
    }
    
    .nav-menu {
        gap: 25px;
    }
}

@media (max-width: 768px) {
    .nav-menu {
        display: none;
    }
    
    .mobile-toggle {
        display: block;
    }
    
    .nav-container {
        padding: 0 20px;
    }
    
    /* Make logo smaller on mobile */
    .nav-logo a {
        max-width: 180px;
    }
    
    .logo-img {
        height: 35px;
    }
    
    .hex-nav {
        padding: 12px 0;
    }
}

/* For very small phones */
@media (max-width: 480px) {
    .nav-logo a {
        max-width: 150px;
    }
    
    .logo-img {
        height: 30px;
    }
    
    .mobile-link {
        font-size: 24px;
        padding: 18px 0;
    }
    
    .mobile-menu-content {
        padding: 70px 30px 30px;
    }
    
    .mobile-close {
        top: 25px;
        right: 30px;
    }
}

/* ============================================ */
/* SMOOTH SCROLLING FOR SECTIONS                */
/* ============================================ */
html {
    scroll-behavior: smooth;
}

/* Prevent body scroll when mobile menu is open */
body.mobile-menu-open {
    overflow: hidden;
}
</style>

<script>
document.addEventListener('DOMContentLoaded', function() {
    const mobileToggle = document.getElementById('mobileToggle');
    const mobileMenuOverlay = document.getElementById('mobileMenuOverlay');
    const mobileClose = document.getElementById('mobileClose');
    const mobileLinks = document.querySelectorAll('.mobile-link');
    
    // Mobile menu toggle
    mobileToggle.addEventListener('click', function() {
        mobileToggle.classList.toggle('active');
        mobileMenuOverlay.classList.toggle('active');
        document.body.classList.toggle('mobile-menu-open');
    });
    
    // Close mobile menu
    mobileClose.addEventListener('click', function() {
        mobileToggle.classList.remove('active');
        mobileMenuOverlay.classList.remove('active');
        document.body.classList.remove('mobile-menu-open');
    });
    
    // Close mobile menu when clicking links
    mobileLinks.forEach(link => {
        link.addEventListener('click', function() {
            mobileToggle.classList.remove('active');
            mobileMenuOverlay.classList.remove('active');
            document.body.classList.remove('mobile-menu-open');
        });
    });
    
    // Close mobile menu on escape key
    document.addEventListener('keydown', function(e) {
        if (e.key === 'Escape' && mobileMenuOverlay.classList.contains('active')) {
            mobileToggle.classList.remove('active');
            mobileMenuOverlay.classList.remove('active');
            document.body.classList.remove('mobile-menu-open');
        }
    });
});
</script>
