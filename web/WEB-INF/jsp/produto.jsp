<%-- 
    Document   : produto
    Created on : 15/04/2024, 15:51:55
    Author     : Senai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/35f5de594d.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

        <link rel="stylesheet" href="./styles/header.css">
        <link href="./styles/paginaInicial.css" rel="stylesheet" type="text/css"/>
        <script src="https://kit.fontawesome.com/35f5de594d.js" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="./images/favicon.png" type="image/x-icon">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container-1">
            <nav id="nav" class="navbar bg-body-tertiary">
                <div class="container-fluid">
                    <a class="navbar-brand" href="./home">Gibelato Store</a>
                    <form class="d-flex" role="search">
                        <link href="./styles/produto.css" rel="stylesheet" type="text/css"/>
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button id="btn-search" class="btn btn-outline-success" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
                    </form>
                </div>
            </nav>
        </div>

        <header class="header">
            <div class="categorias">
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="fa-solid fa-list"></i>Categorias
                    </button>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="./masculino"><i class="fa-solid fa-person"></i>Masculino</a></li>
                        <li><a class="dropdown-item" href="#"><i class="fa-solid fa-person-dress"></i>Feminino</a></li>
                        <li><a class="dropdown-item" href="#"><i class="fa-solid fa-shoe-prints"></i>Calçados</a></li>
                    </ul>
                </div>
                <button type="button" class="btn btn-light"><i class="fa-solid fa-star"></i> Destaques</button>
                <button type="button" class="btn btn-light"><i class="fa-solid fa-cart-shopping"></i> Carrinho</button>
                <button type="button" class="btn btn-light"><i class="fa-solid fa-user"></i> Minha conta</button>
            </div>    
        </header>

        <main class="main">
            <div class="container">
                <div class="right-box">
                    <div class="main-image-box">
                        <img src="./images/Vans/vans-1.jpg" alt="" class="main-image"/>
                    </div>
                    <div class="small-images">
                        <div class="image-box"><img src="./images/Vans/vans-2.jpg" alt="" class="image"/></div>
                        <div class="image-box"><img src="./images/Vans/vans-3.jpg" alt="" class="image"/></div>
                        <div class="image-box"><img src="./images/Vans/vans-4.jpg" alt="" class="image" /></div>
                        <div class="image-box"><img src="./images/Vans/vans-5.jpg" alt="" class="image"/></div>
                    </div>
                </div>
                <div class="details-box">
                    <h1>Tênis Freeday Switch Preto Preto</h1>
                    <h3>Preço:</h3>
                    <h3>$ 344.99</h3>
                    <h4>Quantidade</h4>
                    <div class="add">
                        <button>+</button>
                        <p>90</p>
                        <button>-</button>
                    </div>

                    <button>Adicionar ao carrinho</button>
                </div>
            </div>
        </main>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <script src="./scripts/produto.js" type="text/javascript"></script>
    </body>
</html>
