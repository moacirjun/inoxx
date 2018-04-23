window.onscroll = function() {navScroll();};

window.onload = function() {
    var pageTitle = document.querySelector("#page-title"),
            vTop = document.querySelector("header").scrollHeight;
    if (pageTitle === null || pageTitle === 'undefined') {
        return;
    }
    
    window.scroll({top: vTop, left:0, behavior:'smooth'});
}

function navScroll() {
    if (window.screen.width <= 990) {
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


