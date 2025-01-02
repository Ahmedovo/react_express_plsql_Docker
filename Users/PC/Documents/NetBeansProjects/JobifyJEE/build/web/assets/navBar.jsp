<%-- 
    Document   : navBar
    Created on : 21 déc. 2024, 20:31:09
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Jobify</title>
    <link rel="shortcut icon" href="assets/img/linkedIn_PNG13.png" type="image/x-icon">
    <link rel="stylesheet" href="assets/CSS/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/CSS/style.css">
    <link rel="stylesheet" href="assets/fontawesome/css/all.min.css">
    </head>
    <body>
        <div class="border-bottom fixed-top">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light">
                <a class="navbar-brand d-flex align-items-center pt-0" href="#">
                    <i class="fab fa-linkedin fa-2x linkedin-logo"></i> 
                    
                    <!-- Search -->
                    <div class="search ml-2 pl-2 rounded">
                        <i class="fas fa-search fa-xs ml-2"></i>
                        <input type="text" placeholder="Arama Yap">
                    </div>
                </a>
                <div class="d-none d-sm-block">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-three-dots" viewBox="0 0 16 16">
                            <path d="M3 9.5a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z"/>
                        </svg>
                    </button>
                </div>

                <!-- Navbar-Nav -->
                <div class="collapse navbar-collapse" id="navbarNav">
                  <ul class="navbar-content ml-auto">
                    <li class="nav-item nav-item-size active" style="border-bottom: 1px solid black;">
                        <a href="#" class="nav-link mb-1" style="color: black;">
                            <i class="fas fa-home fa-lg"></i>
                        </a>
                        <a class="nav-link" style="color: black;" href="#">Ana Sayfa<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item nav-item-size">
                        <a class="nav-link mb-1" style="color: rgb(102, 101, 101);">
                            <i class="fas fa-user-friends fa-lg"></i>
                        </a>
                        <a class="nav-link" href="#">Ağım</a>
                    </li>
                    <li class="nav-item nav-item-size">
                        <a class="nav-link mb-1" style="color: rgb(102, 101, 101);">
                            <i class="fas fa-briefcase fa-lg"></i>
                        </a>
                        <a class="nav-link" href="#">İş İlanları</a>
                    </li>
                    <li class="nav-item nav-item-size">
                        <a class="nav-link mb-1" style="color: rgb(102, 101, 101);">
                            <i class="fas fa-comment-dots fa-lg"></i>
                        </a>
                      <a class="nav-link" href="#">Mesajlaşma</a>
                    </li>
                    <li class="nav-item nav-item-size">
                        <a class="nav-link mb-1" style="color: rgb(102, 101, 101);">
                            <i class="fas fa-bell fa-lg"></i>
                        </a>
                        <a class="nav-link" href="#">Bildirimler</a>
                    </li>
                    
                    <!-- Dropdown-Menu-1 -->
                    <li class="nav-item nav-item-size dropdown mb-1">
                        <img src="assets/img/profil-photo.jpg" class="rounded-circle" style="width: 23px; height: 23px;" alt="profil-photo">
                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Ben</a>

                        <div class="dropdown-menu dropdown-menu-1 p-3">

                            <div class="row">
                                <div class="col-2">
                                    <img class="rounded-circle dropdown-profil" src="assets/profil-photo.jpg" alt="profil-photo">
                                </div>
                                <div class="col-10">
                                    <div class="pl-2">
                                        <span>
                                            <b>Zehra İkizler</b> <br>
                                        </span>
                                        <p>Bubo Creative Studio şirketinde Intern Frontend Developer</p>
                                    </div>
                                </div>
                            </div>

                            <button type="button" class="dropdown-button">
                                <b>Profilinizi Görünteleyin</b>
                            </button>

                            <div class="dropdown-divider"></div>

                            <div class="row">
                                <div class="col-12">
                                    <span>Hesap</span> <br>
                                </div>
                                <div class="col-12">
                                <a href="#" class="dropdown-color">Ayarlar ve Gizlilik</a> <br>
                                </div>
                                <div class="col-12">
                                    <a href="#" class="dropdown-color">Yardım</a> <br>
                                </div>                               
                                <div class="col-12">
                                    <a href="#" class="dropdown-color">Dil</a> <br>
                                </div>
                            </div>

                            <div class="dropdown-divider"></div>

                            <div class="row">
                                <div class="col-12">
                                    <span>Yönet</span> <br>
                                </div>
                                <div class="col-12">
                                <a href="#" class="dropdown-color">Gönderi ve Faaliyetler</a> <br>
                                </div>
                                <div class="col-12">
                                    <a href="#" class="dropdown-color">İş İlanı ve Yayınlama Hesabı</a> <br>
                                </div>                               
                            </div>

                            <div class="dropdown-divider"></div>

                            <div class="row">
                                <div class="col-12">
                                    <a href="#" class="dropdown-color">Oturumu Kapat</a> <br>
                                </div>                               
                            </div>

                        </div>

                    </li>

                    <li class="line">

                    </li>

                    <!-- Dropdown-Menu-2 -->
                    <li class="nav-item nav-item-size dropdown">
                        <a class="nav-link mb-1" style="color: rgb(102, 101, 101);">
                            <i class="fas fa-th fa-lg"></i>
                        </a>
                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">İş</a>
                        
                        <div class="dropdown-menu dropdown-menu-2 pl-2">

                            <div class="mt-2 mb-2 d-flex">
                                <a href="#" class="ml-auto pr-3" style="color: black;">
                                  <i class="fas fa-times fa-lg"></i>
                                </a>
                            </div>

                          <div class="row ml-3 pl-2 pt-3">
                              <div class="col-12 title-border">
                                  <h6 class="title-font">Diğer LinkedIn Ürünlerini Ziyaret Edin</h6>
                              </div>

                              <div class="row mt-3 px-3">
                                  <div class="col-3 inclusive">
                                    <div class="department">
                                        <div class="outer-box">
                                            <a href="#" class="d-block py-2">
                                                <i class="fas fa-clipboard fa-2x"></i>
                                            </a>
                                        </div>
                                        <p>
                                            İş İlanını Yayınla
                                        </p>
                                    </div>
                                  </div>

                                  <div class="col-3 inclusive">
                                    <div class="department">
                                        <div class="outer-box">
                                            <a href="#" class="d-block py-2">
                                                <i class="fas fa-caret-square-right fa-2x"></i>
                                            </a>
                                        </div>
                                        <p>
                                            Learning
                                        </p>
                                    </div>
                                  </div>

                                  <div class="col-3 inclusive">
                                    <div class="department">
                                        <div class="outer-box">
                                            <a href="#" class="d-block py-2">
                                                <i class="fas fa-file-alt fa-2x"></i>
                                            </a>
                                        </div>
                                        <p>
                                            İçgörüler
                                        </p>
                                    </div>
                                  </div>

                                  <div class="col-3 inclusive">
                                    <div class="department">
                                        <div class="outer-box">
                                            <a href="#" class="d-block py-2">
                                                <i class="far fa-dot-circle fa-2x"></i>
                                            </a>
                                        </div>
                                        <p>
                                            Reklam verin
                                        </p>
                                    </div>
                                  </div>

                                  <div class="col-3 inclusive">
                                    <div class="department">
                                        <div class="outer-box">
                                            <a href="#" class="d-block py-2">
                                                <i class="fas fa-compass fa-2x"></i>
                                            </a>
                                        </div>
                                        <p>
                                            Adayları Bulun
                                        </p>
                                    </div>
                                  </div>

                                  <div class="col-3 inclusive">
                                    <div class="department">
                                        <div class="outer-box">
                                            <a href="#" class="d-block py-2">
                                                <i class="fas fa-users fa-2x"></i>
                                            </a>
                                        </div>
                                        <p>
                                            Gruplar
                                        </p>
                                    </div>
                                  </div>

                                  <div class="col-3 inclusive">
                                    <div class="department">
                                        <div class="outer-box">
                                            <a href="#" class="d-block py-2">
                                                <i class="fas fa-user-check fa-2x"></i>
                                            </a>
                                        </div>
                                        <p>
                                            ProFinder
                                        </p>
                                    </div>
                                  </div>

                                  <div class="col-3 inclusive">
                                    <div class="department">
                                        <div class="outer-box">
                                            <a href="#" class="d-block py-2">
                                                <i class="fas fa-wallet fa-2x"></i>
                                            </a>
                                        </div>
                                        <p>
                                            Maaş
                                        </p>
                                    </div>
                                  </div>

                              </div>
                          </div>

                          <div class="row ml-3 pl-2 pt-3 mt-3 title-border">
                            <div class="col-12 title-border pb-2 mb-3">
                                <h6 class="title-font">LinkedIn Ticari Hizmetler</h6>
                            </div>

                            <div class="col-12 mb-1">
                                <a href="#">
                                    <h6 class="dropdown-footer-title">Yetenek ve Çözümleri</h6>
                                    <p class="dropdown-footer-text">Yetenekleri bulun, onların ilgisini çekin ve işe alın</p>
                                </a>
                            </div>

                            <div class="col-12 mb-1">
                                <a href="#">
                                    <h6 class="dropdown-footer-title">Yetenek ve Çözümleri</h6>
                                    <p class="dropdown-footer-text">Yetenekleri bulun, onların ilgisini çekin ve işe alın</p>
                                </a>
                            </div>

                            <div class="col-12 mb-1">
                                <a href="#">
                                    <h6 class="dropdown-footer-title">Satış Çözümleri</h6>
                                    <p class="dropdown-footer-text">Satış fırsatlarının kapısını açın</p>
                                </a>
                            </div>

                            <div class="col-12 mb-1">
                                <a href="#">
                                    <h6 class="dropdown-footer-title">Ücretsiz iş ilanı yayınlayın</h6>
                                    <p class="dropdown-footer-text">İş ilanınızı kalifiye adayların önüne serin</p>
                                </a>
                            </div>

                            <div class="col-12 mb-1">
                                <a href="#">
                                    <h6 class="dropdown-footer-title">Pazarlama Çözümleri</h6>
                                    <p class="dropdown-footer-text">İşinizi büyütün ve yeni müşteriler edinin</p>
                                </a>
                            </div>

                            <div class="col-12 mb-1">
                                <a href="#">
                                    <h6 class="dropdown-footer-title">Eğitim Çözümleri</h6>
                                    <p class="dropdown-footer-text">Organizasyonunuzda yetenekler geliştirin</p>
                                </a>
                            </div>
                            
                          </div>

                          <div class="row ml-3 pl-2 pt-3 my-3">
                            <div class="col-12 mb-1 pb-3">
                                <a href="#">
                                    <h6 class="dropdown-footer-title">
                                        Şirket Sayfası Oluştur
                                        <i class="fas fa-plus"></i>                                       
                                    </h6>
                                </a>
                            </div>
                          </div>
                        
                        </div>

                    </li>
                    <li class="nav-item ">
                        <a class="nav-link pt-1 navbar-end" href="#" style="width: 110px; font-size: 12px !important;">
                            Premium’u 1 Ay Ücretsiz Deneyin
                        </a>
                    </li>
                  </ul>

                </div>
            </nav>
        </div>
    </div>
    </body>
</html>