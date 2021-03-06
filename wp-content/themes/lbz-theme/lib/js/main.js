window.onscroll = function() {navScroll(); marginAutoSidebar();};

window.onload = function() {scrollToPageTitle(); navScroll()}

var isOnMobile = function verificaTamanhoTela() {
    return window.screen.width <= 990;
}

function navScroll() {
    //Bypass disposutivos mobile.
    if (isOnMobile()) {
        return;
    }
    
    var menu = document.querySelector("nav"),
            navBrand = document.querySelector(".navbar-brand"),
            navBrandImg = document.querySelector(".navbar-brand img")
    
    if (document.body.scrollTop > 60 || document.documentElement.scrollTop > 60) {
        menu.classList.replace("navbar-light", "navbar-dark");
        menu.classList.replace("bg-transp", "bg-azul-marinho");
        menu.style.transition = "all 300ms";
        navBrand.classList.add("mobile");
        navBrandImg.classList.add("mobile");
    } else {
        menu.classList.replace("navbar-dark", "navbar-light");
        menu.classList.replace("bg-azul-marinho", "bg-transp");
        navBrand.classList.remove("mobile");
        navBrandImg.classList.remove("mobile");
        navBrand.style.transition = "all 300ms";
        navBrandImg.style.transition = "all 300ms";
    }
}

function scrollToPageTitle() {
    var pageTitle = document.querySelector("#page-title"),
            vTop = document.querySelector("header").scrollHeight;
    if (pageTitle === null || pageTitle === 'undefined') {
        return;
    }
    
    window.scroll({top: vTop, left:0, behavior:'smooth'});
}

function marginAutoSidebar() {
    var marginTop = 0, header = document.querySelector("header"), 
            sidebar = document.querySelector(".sidebar");
       
    if (sidebar === null || sidebar === 'undefined') {
        return;
    }
    
    
    if (window.scrollY >= header.scrollHeight) {
        marginTop = window.scrollY - header.scrollHeight;
        if (marginTop > 60) {
            marginTop = 60;
        }
    }
    
    //Bypass disposutivos mobile.
    if (window.screen.width <= 990) {
        marginTop = 0;
    }
//    
    sidebar.style.marginTop = marginTop + "px";
}

function getProdutos(button) {
    var xmlhttp = new XMLHttpRequest(),
            preLoader = document.querySelector("#pre-loader"),
            containerProds = document.querySelector("#produtos"),
            listProds = document.querySelector("#prodsContent"),
            category = button.getAttribute("value");
    
    xmlhttp.onreadystatechange = function() {
        if (this.readyState === 4 && this.status === 200) {
            
            listProds.innerHTML = this.responseText;
            
            preLoader.classList.add("escondida-animada");
            if (isOnMobile()) {
                trocaNomeBotaoCategoria(button.innerText);
                fechaListaCategorias();
            }
            scrollToPageTitle();
        }
    };
    
    var btnAtivo = document.querySelector(".sidebar ul li span.active");
    
    btnAtivo.classList.remove("active");
    button.classList.add("active");
    preLoader.classList.remove("escondida");
    preLoader.classList.remove("escondida-animada");
    xmlhttp.open("GET", ajaxprodutos.ajaxurl + "?action=get_produtos&category=" + category, true);
    xmlhttp.send();
}

function getProdutosPage(button) {
    var xmlhttp = new XMLHttpRequest(),
            preLoader = document.querySelector("#pre-loader"),
            listProds = document.querySelector("#prodsContent"),
            btnCategoryAtivo = document.querySelector(".sidebar ul li span.active"),
            category = btnCategoryAtivo.getAttribute("value");
            var btnDataValue = button.getAttribute("value");
            
        var paginaAtivada = document.querySelector("nav ul.pagination li.active span");
        paginaAtivada = paginaAtivada.getAttribute("value");
        
        switch (btnDataValue) {
            case "previous":
                paged = (paginaAtivada.valueOf() - 1);
                break;
            case "next" :
                paged = (Number(paginaAtivada) + 1);
                break;
            default:
                paged = (btnDataValue);
        }
    
    xmlhttp.onreadystatechange = function() {
        if (this.readyState === 4 && this.status === 200) {
            
            listProds.innerHTML = this.responseText;
            
            preLoader.classList.add("escondida-animada");
            if (isOnMobile()) {
                fechaListaCategorias();
            }
            scrollToPageTitle();
        }
    };
    
    preLoader.classList.remove("escondida");
    preLoader.classList.remove("escondida-animada");
    xmlhttp.open("GET", ajaxprodutos.ajaxurl +"?action=get_produtos&category=" 
                            + category + "&page=" + paged, true);
    xmlhttp.send();
}

function trocaNomeBotaoCategoria(categoriaText) {
    var btn = document.querySelector(".btn-categorias");
    btn.innerHTML = "Categoria - " + categoriaText;
}

function fechaListaCategorias() {
//    var btn = document.querySelector(".btn-categorias");
//    var lista = document.querySelector("#categorias-mobile");
//    btn.setAttribute("aria-expanded", "false");
//    btn.classList.remove("collapsed");
//    lista.classList.remove("show");
    var btn = document.querySelector(".btn-categorias");
    var lista = document.querySelector("#categorias-mobile");
    
    if ( lista.classList.contains("show") ) {
        btn.click();
    }
}


