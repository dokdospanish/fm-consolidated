[...document.querySelectorAll('img')].forEach(img => {
    if (img.complete) {
        handleImageLoaded(img);
    }
    else {
        img.addEventListener('load', e => handleImageLoaded(e.target))
    }
});

function handleImageLoaded(img) {
    img.classList.add('loaded');
}