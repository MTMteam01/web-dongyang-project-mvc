function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    
    // Initialize slideIndex
    if (slideIndex === undefined) {
        slideIndex = 0;
    }

    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    
    slideIndex++;
    
    if (slideIndex > slides.length) { 
        slideIndex = 1;
    }
    
    slides[slideIndex - 1].style.display = "block";
    setTimeout(showSlides, 5000); // Change slide every 5 seconds
}

// Initial call to start the slideshow
showSlides();
